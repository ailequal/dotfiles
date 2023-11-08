#!/bin/bash

##############
# git-backup #
##############

# Inside the "repos.txt" file, set the repositories names, one per line.
# The target folder is always generated in the current directory where the script is executed.
# Inside the new folder, each repository will be stored inside a tar.gz archive.
# Each repository is cloned as a mirror, so you can push it to a new remote.
# To restore a repository, just untar the archive and git clone its mirror.
# Example for executing the script with a few arguments:
# ~/git-backup.sh -u john.doe -r ~/repos.txt



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

while getopts "d:u:r:t:" FLAG
do
  case "${FLAG}" in
    d) domain="${OPTARG}" ;;
    u) username="${OPTARG}" ;;
    r) repos="${OPTARG}" ;;
    t) target="${OPTARG}" ;;
  esac
done

target=$(echo "$target" | tr -d '[:space:]')

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
  echo "\$target already exists, set a new one (-t)."
  exit 0
fi

echo "Domain:   $domain"
echo "Username: $username"
echo "Repos:    $repos"
echo "Target:   $target"
echo ""

echo "Double check your configuration above."
read -p "Do you want to continue? [y/n]" -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo ""
  echo "# processing #"
  echo "##############"
  echo ""

  mkdir "$target"

  while IFS= read -r repo; do
    repo=$(echo "$repo" | tr -d '[:space:]')

    if [ -n "$repo" ]; then
      echo "$count: $repo"

      ssh_repo="$domain:$username/$repo.git"
      git clone --mirror "$ssh_repo" "./$target/$repo"
      tar -zcvf "./$target/$repo.bak.tar.gz" -C "./$target" "$repo"
      rm -rf "./$target/$repo"
      count=$((count+1))

      echo "##########"
      echo ""
    fi
  done < "$repos"

  echo "# end #"
  echo "#######"
  echo ""

  exit 0
fi

echo ""
echo "Script aborted."

exit 0
