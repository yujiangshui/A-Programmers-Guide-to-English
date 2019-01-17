# First you need to select master branch /docs folder as GitHub Pages folder, you can follow by this https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/

# clean old version
rm -rf ./docs

# install the plugins and build the static site
gitbook install && gitbook build

# change _book name to docs
mv _book docs

# create CNAME record
echo 'a-programmers-guide-to-english.harryyu.me' > ./docs/CNAME

# add all files
git add .

# commit
git commit -a -m "Docs: update docs"

# push
# git push origin master
