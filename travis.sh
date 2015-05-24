#!/bin/bash -xe
function deploy () {
    if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
        BRANCH_NAME="travis-latest-snapshot"
        set +x
        echo "machine github.com" >> ~/.netrc
        echo "login $GH_LOGIN"    >> ~/.netrc
        echo "password $GH_TOKEN" >> ~/.netrc
        set -x

        git config --global user.email 'travis@travis-ci.org'
        git config --global user.name 'travis'
        git clone --quiet "https://github.com/$GH_DEPLOY_REPO.git" work
        cd work
        git checkout -b $BRANCH_NAME
        cd slides
        git rm -r release
        cp -R ../../release .
        git add .

        git commit -q -m "Automatically updated by Travis build $TRAVIS_BUILD_NUMBER"
        git push origin $BRANCH_NAME

        rm -v ~/.netrc
    fi
}

"$@"
