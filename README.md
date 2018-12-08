## Usage

Clone the repository on your computer:

```bash
git clone git@github.com:gabrielecanepa/webpack-init
cd webpack-init
```

Copy the script in your root folder and add the `webpack:init` alias:

```bash
cp .webpack-init.sh ~
echo "webpack:init='sh ~/.webpack-init.sh'" >> ~/.aliases
```

Your are now able to run `webpack:init` in any folder of your computer.

The command initializes a new repository with a ready-to-use [webpack boilerplate](https://github.com/gabrielecanepa) comprending:

- [Yarn](https://yarnpkg.com)
- [webpack](https://webpack.js.org)
- [Babel](https://babeljs.io)
- [ESLint](https://eslint.org)
- [Sass](http://sass-lang.com), with [mini-css-extract-plugin](https://github.com/webpack-contrib/mini-css-extract-plugin) and different loaders
- [stylelint](https://stylelint.io)

After initializing a new repository, start your server with:

```bash
webpack-dev-server
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -m "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request

## License
[![MIT license](https://raw.githubusercontent.com/gabrielecanepa/images/master/mit-badge.png)](https://gabriele.canepa.io/mit)
