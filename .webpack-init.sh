echo "\e[1;44mProject name:\e[0m"
read project_name

mkdir $project_name
cd $project_name

echo "\e[1;44mInitializing yarn for ${project_name}...\e[0m"
yarn init

echo "\e[1;44mAdding packages...\e[0m"
yarn add --dev \
webpack webpack-cli webpack-dev-server \
@babel/core @babel/preset-env babel-loader \
eslint eslint-config-airbnb-base eslint-plugin-import \
css-loader mini-css-extract-plugin node-sass sass-loader \
stylelint stylelint-config-recommended-scss stylelint-scss

echo "\e[1;44mDownloading assets and config files...\e[0m"
mkdir javascripts && touch javascripts/index.js
mkdir stylesheets && touch stylesheets/index.scss
mkdir images

curl https://raw.githubusercontent.com/gabrielecanepa/webpack-boilerplate/master/images/favicon.png > images/favicon.png
curl https://raw.githubusercontent.com/gabrielecanepa/webpack-boilerplate/master/.babelrc > .babelrc
curl https://raw.githubusercontent.com/gabrielecanepa/webpack-boilerplate/master/.eslintrc.json > .eslintrc.json
curl https://raw.githubusercontent.com/gabrielecanepa/webpack-boilerplate/master/.gitignore > .gitignore
curl https://raw.githubusercontent.com/gabrielecanepa/webpack-boilerplate/master/.stylelintrc > .stylelintrc
curl https://raw.githubusercontent.com/gabrielecanepa/webpack-boilerplate/master/index.html > index.html
curl https://raw.githubusercontent.com/gabrielecanepa/webpack-boilerplate/master/webpack.config.js > webpack.config.js

echo "\e[1;44m🎉 ${project_name} is ready to use! Launch the app with 'webpack-dev-server'\e[0m"
