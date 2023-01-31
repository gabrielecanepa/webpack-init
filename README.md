## Usage

Clone the repository on your computer. You must have [Node.js](https://nodejs.org) (> v4) and [Yarn](https://yarnpkg.com/lang/en/docs/install) installed:

```sh
git clone git@github.com:gabrielecanepa/webpack-init
# or 
gh repo clone gabrielecanepa/webpack-init

cd webpack-init
```

Run the `.webpack-init` script once. The executable will be copied into your root folder and an alias will be set in your first available profile:

```sh
sh .webpack-init
```

![](https://github.com/gabrielecanepa/private/blob/main/repos/webpack-init/screen1.gif?raw=true)

After restarting the terminal, you will be able to run `webpack:init` from any place of your computer.

The command initializes a new repository with a ready-to-use [webpack boilerplate](https://github.com/gabrielecanepa/webpack-boilerplate) with the following configuration:

-   [Yarn](https://yarnpkg.com)
-   [webpack](https://webpack.js.org)
-   [Babel](https://babeljs.io) with [the latest preset](https://babeljs.io/docs/en/babel-preset-env)
-   [ESLint](https://eslint.org) with [base Airbnb configuration](https://www.npmjs.com/package/eslint-config-airbnb-base)
-   [Sass](http://sass-lang.com) with [stylelint](https://stylelint.io) and modules import to enjoy hot reloading
-   [GitHub Pages](https://www.npmjs.com/package/gh-pages) for easy deployment

![](https://github.com/gabrielecanepa/private/blob/main/repos/webpack-init/screen2.gif?raw=true)

Make sure you have `./node_modules/.bin` in your `$PATH`. This way you can run your server with:

```sh
webpack-dev-server
```

![](https://github.com/gabrielecanepa/private/blob/main/repos/webpack-init/screen3.gif?raw=true)

### Scripts

To speed up the development process, some specific scripts have been defined in the [`package.json` of the boilerplate](https://github.com/gabrielecanepa/webpack-boilerplate/blob/master/package.json):

```json
"scripts": {
  "start": "webpack-dev-server --mode development",
  "lint": "eslint src/**/*.js* && stylelint *.*css",
  "build": "webpack -p --bail",
  "deploy": "gh-pages -d dist -m 'Deploy by gh-pages'"
}
```

To start a local server on port `8080`:

```bash
yarn start
```

To lint all your JavaScript and CSS/SCSS files:

```bash
yarn lint
```

To build your static files:

```bash
yarn build
```

To push the built files to the `gh-pages` branch and deploy on [GitHub Pages](https://pages.github.com):

```bash
yarn deploy
```
