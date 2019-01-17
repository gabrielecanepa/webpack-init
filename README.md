## Usage

Clone the repository on your computer. You must have [Node.js](https://nodejs.org) (> v4) and [Yarn](https://yarnpkg.com/lang/en/docs/install) installed:

```bash
git clone git@github.com:gabrielecanepa/webpack-init
cd webpack-init
```

Run the `.webpack-init` script once. The executable will be copied into your root folder and an alias will be set in your first available profile:

```bash
zsh .webpack-init
```

![](https://github.com/gabrielecanepa/assets/raw/master/webpack-init/screen1.gif?sanitize=true)

After restarting the terminal, you will be able to run `webpack:init` from any folder of your computer.

The command initializes a new repository with a ready-to-use [webpack boilerplate](https://github.com/gabrielecanepa/webpack-boilerplate) with the following configuration:

-   [Yarn](https://yarnpkg.com)
-   [webpack](https://webpack.js.org)
-   [Babel](https://babeljs.io) with [the latest preset](https://babeljs.io/docs/en/babel-preset-env)
-   [ESLint](https://eslint.org) with [base Airbnb configuration](https://www.npmjs.com/package/eslint-config-airbnb-base)
-   [Sass](http://sass-lang.com) with [stylelint](https://stylelint.io) and modules import to enjoy hot reloading
-   [gh-pages](https://www.npmjs.com/package/gh-pages) to easily deploy on GitHub Pages

![](https://github.com/gabrielecanepa/assets/raw/master/webpack-init/screen2.gif?sanitize=true)

> **NOTE**: The process in the picture has been accelerated for illustrative purposes

Make sure you have `./node_modules/.bin` in your `$PATH`. This way you can run your server with:

```bash
webpack-dev-server
```

![](https://github.com/gabrielecanepa/assets/raw/master/webpack-init/screen3.gif?sanitize=true)

### Scripts

To speed up your development, you can define specific scripts in your `package.json` and run them with the `yarn run` command. This are the ones used by the [webpack-boilerplate](https://github.com/gabrielecanepa/webpack-boilerplate/blob/master/package.json):

```json
"scripts": {
  "start": "webpack-dev-server --mode development",
  "lint": "eslint ./src/**/*.js* && stylelint ./assets/stylesheets/**/*.*css",
  "build": "webpack -p --bail",
  "deploy": "gh-pages -d dist -m 'Automated deploy by gh-pages'"
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

## Contributing

1.  Fork the repository
2.  Create your feature branch (`git checkout -b my-new-feature`)
3.  Commit your changes (`git commit -m "Add some feature"`)
4.  Push to the branch (`git push origin my-new-feature`)
5.  Create a new pull request

## License

[![MIT license](https://github.com/gabrielecanepa/assets/raw/master/badges/mit.svg?sanitize=true)](https://gabriele.canepa.io/mit)
