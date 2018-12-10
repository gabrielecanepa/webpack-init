# Text transform and spinner functions
text_transform(){
  BLUE="\033[0;34m"     # Blue
  BBLUE="\033[1;34m"    # Blue bold
  GREEN="\033[0;32m"    # Green
  BGREEN="\033[1;32m"   # Green bold

  BOLD="\033[1m"        # Bold
  NORMAL="\033[m"       # Normal

  color=\$${1:-NORMAL}

  echo -ne "$(eval echo ${color})"
  cat

  echo -ne "${NORMAL}"
}
spinner(){
  sleep $1 & job=$!
  while kill -0 $job 2>/dev/null
    do for s in / - \\ \|
      do printf "\r$s" | text_transform BBLUE
      sleep $2
    done
  done
}

# Copy script in root if it doesn't exist
if [ ! -f ~/.webpack-init.sh ]; then
  echo "Copying script to root folder..." | text_transform BBLUE
  spinner 2 0.1
  cp ./.webpack-init.sh ~
  echo "\r✔️  Done!"
fi

# Set up alias and profiles
ALIAS="alias webpack:init='zsh ~/.webpack-init.sh'"
PROFILES=(aliases bash_profile bashrc profile zshrc)

# Execute just if the alias is not already present
if [[ ! $(alias webpack:init) ]]; then
  echo "Creating alias..." | text_transform BBLUE
  spinner 2 0.1
  # Copy the alias in the first found profile
  for profile in $PROFILES; do
    if [ -f ~/.$profile ] && ! grep -q $ALIAS ~/.$profile; then
      echo $ALIAS >> ~/.$profile
      printf "\r✔️  Alias successfully created in "
      print  " ~/.$profile!" | text_transform BOLD
      printf "You can launch a new webpack project with "
      print  "webpack:init" | text_transform BGREEN
      exit
    fi
  done
fi

# Initialize a new project `$project_name`
echo "Project name:" | text_transform BBLUE
read project_name
mkdir $project_name
cd $project_name

# Install Yarn
echo "Initializing Yarn for ${project_name}..." | text_transform BBLUE
yarn init

# Add packages
echo "Adding packages..." | text_transform BBLUE
yarn add --silent --dev \
webpack webpack-cli webpack-dev-server \
@babel/core @babel/preset-env babel-loader \
eslint eslint-config-airbnb-base eslint-plugin-import \
css-loader mini-css-extract-plugin node-sass sass-loader \
stylelint stylelint-config-recommended-scss stylelint-scss

# Download assets from https://github.com/gabrielecanepa/webpack-boilerplate
echo "Downloading assets and config files..." | text_transform BBLUE
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

echo   "${project_name} is ready to use! 🎉" | text_transform BOLD
printf "Launch the app with "
print  "webpack-dev-server" | text_transform BGREEN
