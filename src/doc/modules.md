NPM Modules by Category
=================================================

This page gives a short description of the used and preferred npm modules in
different categories.
It's neither meant to be a complete list or show the best modules but more my
selection from the ever growing node modules list.


General modules
-------------------------------------------------

### Language tools

- [CoffeeScript](http://coffeescript.org/)
  a language that compiles into JavaScript but is easier to read and write
- [Async](https://github.com/caolan/async/)
  an utility module which provides straight-forward, powerful functions for
  working with asynchronous JavaScript.
- [Memoizee](https://github.com/medikoo/memoize)
  make a function or method using cache for results
- [alinex-once](https://alinex.github.io/node-once/)
  lets a function run only once also if called multiple times
- [Debug](https://github.com/visionmedia/debug/)
  tiny node.js & browser debugging utility for your libraries and applications


### Date and Time

- [Moment](http://momentjs.com/docs/)
  Parse, manipulate, and display dates and times
- [Chrono](https://github.com/wanasit/chrono)
  natural language date parser


Data Storages
-------------------------------------------------

### Filesystem

- [alinex-fs](https://alinex.github.io/node-fs/)
  enhancement for the node fs module
  (same as mkdirp, fs-extra, graceful-fs, ncp, rimraf, wrench and more)
- [chokidar](https://github.com/paulmillr/chokidar)
  fs-watch wrapper
- [minimatch](https://github.com/isaacs/minimatch)
  glob like file name matching
- POSIX
  => not used because not platform independent

### File Formats

- [js-yaml](https://github.com/nodeca/js-yaml)
  YAML parser (to read configurations)
- [xml2js](https://github.com/Leonidas-from-XIV/node-xml2js)
  Conversion from simple XML to JavaScript objects

### Databases

- [alinex-mysql](https://alinex.github.io/node-mysql/)
  easy to use mysql library
  (using [mysql](https://github.com/felixge/node-mysql))


Command line support
-------------------------------------------------

- [chalk](https://github.com/sindresorhus/chalk)
  easy way to get colorful output mainly on the command line.
- [yargs](https://github.com/chevex/yargs)
  a light-weight, expressive, and powerful command-line framework
- [Prompt](https://github.com/flatiron/prompt/)
  easy and beautiful command-line prompt

Services
-------------------------------------------------

- [Request](https://github.com/mikeal/request/)
  Simplified HTTP request client


Server
-------------------------------------------------

### Management

- [Forever](https://github.com/nodejitsu/forever/)
  a simple CLI tool for ensuring that a given node script runs continuously

### Maintenance

- [Winston](https://github.com/flatiron/winston/)
  extensible multi-transport async logging library

### Webserver

- [Express.js](http://expressjs.com)

### Webserver modules

- helmet
- toobusy-js
- node-force-domain
- stream-rotate


Template languages
-------------------------------------------------

### HTML

- [jade](http://jade-lang.com/)

### CSS

- Stylus
  with [nib](http://visionmedia.github.io/nib/)


Test
-------------------------------------------------

### Testrunner

- [mocha](https://visionmedia.github.io/mocha/)
  Simple, flexible, javascript test framework

### Helper

- [Chai](http://chaijs.com/)
  assertion library that can be paired with mocha
- [sinon](http://sinonjs.org/)
  test spies, stubs and mocks
- [casper.js](http://casperjs.org/)
  navigation scripting & testing utility written in Javascript for the PhantomJS
  WebKit headless browser and SlimerJS (Gecko)


Client modules
-------------------------------------------------


- [AngularJS](https://docs.angularjs.org/)
  client library is added here to be compiled into the client scripts


Other
-------------------------------------------------
- passport
- mongoose
- socket.io