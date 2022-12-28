#!/bin/bash

##############
# git-backup #
##############



echo ""
echo "# setup #"
echo "#########"
echo ""

printf -v date '%(%Y-%m-%d)T\n' -1
domain="git@github.com"
username=""
repos="repos.txt"
target="git-backup-$date"
count=1

while getopts d:u:r:t: FLAG
do
  case "${FLAG}" in
    d) domain=${OPTARG};;
    u) username=${OPTARG};;
    r) repos=${OPTARG};;
    t) target=${OPTARG};;
  esac
done

if [ -z "$domain" ]; then
  echo "\$domain cannot be empty (-d)."
  exit 0
fi

if [ -z "$username" ]; then
  echo "\$username cannot be empty (-u)."
  exit 0
fi

if [ -z "$repos" ]; then
  echo "\$repos cannot be empty (-r)."
  exit 0
fi

if [ ! -f "$repos" ]; then
  echo "\$repos not found (-r)."
  exit 0
fi

if [ -z "$target" ]; then
  echo "\$target cannot be empty (-t)."
  exit 0
fi

if [ -d "$target" ]; then
  echo "\$target already exist, set a new one (-r)."
  exit 0
fi

echo "Domain:   $domain";
echo "Username: $username";
echo "Repos:    $repos";
echo "Target:   $target";
echo ""

echo "Double check your configuration above."
read -p "Do you want to continue? [y/n]" -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo ""
  echo "# processing #"
  echo "##############"
  echo ""

  mkdir $target

  while read repo; do
    echo "$count: $repo"

    ssh_repo=$domain:$username/$repo.git
    git clone --mirror $ssh_repo ./$target/$repo
    tar -zcvf ./$target/$repo.bak.tar.gz -C ./$target $repo
    rm -rf ./$target/$repo
    count=$(($count+1))

    echo "##########"
    echo ""
  done < $repos

  echo "# end #"
  echo "#######"
  echo ""

  exit 0
fi

echo ""
echo "Script aborted."

exit 0
