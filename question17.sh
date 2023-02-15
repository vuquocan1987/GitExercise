git checkout -b branch1
mv dir1/dir2/foo dir1/
rm -rf dir1/dir2
git add -A
git commit -m "apply changes on branch1"
git checkout -b branch2
mv dir1/dir2/foo dir1/dir2/foo_modifed
rm -rf dir3/*
mv dir3 dir1/
touch dir1/dir3/newfile2
git add -A
git commit -m "apply changes on branch2"
git checkout main
cp dir3/bar dir3/bar_copy
git add -A
git commit -m "apply changes on main"
