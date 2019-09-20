# !/bin/sh

if [ -f "package.json" ]
then
    echo "package.json exist"
else 
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitCommit/master/package.json > ./package.json
    echo "package.json does not exist"
fi
if [ ! -f ".commitlintrc.js" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitCommit/master/.commitlintrc.js > ./.commitlintrc.js
fi
if [ ! -f ".cz-config.js" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitCommit/master/.cz-config.js > ./.cz-config.js 
fi
if [ ! -f ".huskyrc" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitCommit/master/.huskyrc > ./.huskyrc
fi

sudo echo  "node_modules/"  >> .gitignore
sudo npm i -D commitizen cz-conventional-changelog
sudo npm i -D cz-customizable
sudo npm i -D @commitlint/config-conventional @commitlint/cli
sudo npm i -D commitlint-config-cz @commitlint/cli
sudo npm i -D husky@next

if [ ! -f "questions.js" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitCommit/master/questions.js > ./questions.js
fi
/bin/cp -rf ./questions.js ./node_modules/cz-customizable/questions.js