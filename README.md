## Usage

First clone the repository on your computer. You must have [Node.js](https://nodejs.org) (> v4) and [Yarn](https://yarnpkg.com/lang/en/docs/install) installed:

```bash
git clone git@github.com:gabrielecanepa/webpack-init
cd webpack-init
```

Run the script just once - the executable will be automatically copied into your root folder and an alias will be generated:

```bash
zsh .webpack-init.sh
```

Your should now be able to run `webpack:init` from any folder of your computer.

The command initializes a new repository with a ready-to-use [webpack boilerplate](https://github.com/gabrielecanepa/webpack-boilerplate), including:

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
