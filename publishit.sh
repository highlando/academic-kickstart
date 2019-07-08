ppwd=~/work/misc/ws-academic
cd ~/work/misc/highlando.github.io
cp -r ${ppwd}/public/* .
git diff
git add -f .
git commit
git push
