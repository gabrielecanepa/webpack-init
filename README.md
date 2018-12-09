## Usage

Clone the repository on your computer:

```bash
git clone git@github.com:gabrielecanepa/webpack-init
cd webpack-init
```

Copy the script in your root folder and add a `webpack:init` alias (make sure you have an `.aliases` file in your `$ROOT`):

```bash
cp .webpack-init.sh ~
echo "webpack:init='zsh ~/.webpack-init.sh'" >> ~/.aliases
```

Your should now able to run `webpack:init` from any folder of your computer.

The command initializes a new repository with a ready-to-use [webpack boilerplate](https://github.com/gabrielecanepa/webpack-boilerplate) including:

-   [Yarn](https://yarnpkg.com)
-   [webpack](https://webpack.js.org)
-   [Babel](https://babeljs.io)
-   [ESLint](https://eslint.org)
-   [Sass](http://sass-lang.com), with [mini-css-extract-plugin](https://github.com/webpack-contrib/mini-css-extract-plugin), [css-loader](https://github.com/webpack-contrib/css-loader) and [sass-loader](https://github.com/webpack-contrib/sass-loader)
-   [stylelint](https://stylelint.io)

Make sure you have `./node_modules/.bin` in your `$PATH`. This way you can start your server with:

```bash
webpack-dev-server
```

## Contributing

1.  Fork it
2.  Create your feature branch (`git checkout -b my-new-feature`)
3.  Commit your changes (`git commit -m "Add some feature"`)
4.  Push to the branch (`git push origin my-new-feature`)
5.  Create a new pull request

## License

[![MIT license](https://github.com/gabrielecanepa/assets/raw/master/badges/mit.svg?sanitize=true)](https://gabriele.canepa.io/mit)
