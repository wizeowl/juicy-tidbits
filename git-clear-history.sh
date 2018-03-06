# This script clear history before a cetain commit
# use this if the git refs become voluminous or if you fork a project and want to clear the previous history
# usage: ./git-clear-history.sh commit-name

git checkout -b oldroot $1
TREE=`git write-tree`
COMMIT=`echo "Killed history" | git commit-tree "$TREE"`
git checkout -b newroot "$COMMIT"
git rebase --onto newroot oldroot master
# repeat for other branches than master that should use the new initial commit
git checkout master
git branch -D oldroot
git branch -D newroot
git gc # WARNING: if everything's done right, this will actually delete your history from the repo!
