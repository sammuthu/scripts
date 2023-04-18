#!/bin/bash
set -e

if [ $# -lt 1 ]
then
  echo "Usage: $0 <number-of-commits>"
  exit 1
fi

branch_name=$(git symbolic-ref --short HEAD)
num_commits=$1

rem # git checkout $branch_name
git rebase -i HEAD~$num_commits

commit_msg=$(git log --format=%B --reverse HEAD~$num_commits..HEAD | head -n 1)

git commit --amend -m "$commit_msg"
git push --force origin $branch_name

echo "Done!"

