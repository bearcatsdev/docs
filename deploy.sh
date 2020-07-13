#!/usr/bin/env sh

# abort on errors
set -e

# create deploy directory
mkdir .deploy

# loop through all directories and build
for dir in *;
do
    if [ -d "${dir}" ]; then
        cd "${dir}"
        echo "Currently building ${dir}..."

        # build
        yarn build

        # move the build output directory to deploy dir
        mv docs/.vuepress/dist ../.deploy/"${dir}"

        # if you are deploying to a custom domain
        # echo 'www.example.com' > ../.deploy/"${dir}"/CNAME

        # go back up
        cd ../
    fi
done

# deploy to github
cd .deploy
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/bearcatsdev/docs.git master:gh-pages
cd ../

# remove deploy directory
rm -rf .deploy