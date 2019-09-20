# !/bin/sh

if [ -f "package.json" ]
then
    echo "package.json exist "
else 
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitMessage/master/package.json > ./package.json
fi
if [ ! -f ".commitlintrc.js" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitMessage/master/.commitlintrc.js > ./.commitlintrc.js
fi
if [ ! -f ".cz-config.js" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitMessage/master/.cz-config.js > ./.cz-config.js 
fi
if [ ! -f ".huskyrc" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitMessage/master/.huskyrc > ./.huskyrc
fi

sudo echo  "node_modules/"  >> .gitignore
sudo npm i -D commitizen 
sudo npm i -D cz-customizable
sudo npm i -D husky@next

if [ ! -f "questions.js" ]
then
    curl -fsSL https://raw.githubusercontent.com/CNKCQ/GitMessage/master/questions.js > ./questions.js
fi

/bin/cp -rf ./questions.js ./node_modules/cz-customizable/questions.js