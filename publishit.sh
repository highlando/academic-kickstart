ppwd=~/work/misc/ws-academic
hugo
cd ~/work/misc/highlando.github.io
cp -r ${ppwd}/public/* .
git diff
git add -f .
git commit
git push
