Third Party Modules
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

### Others

- [moment](http://momentjs.com/docs/)
  parse, manipulate, and display dates and times
- [memoizee](https://github.com/medikoo/memoize)
  caching which will encapsulate functions or methods to use results cache

System Tools
-------------------------------------------------

### Filesystem

- mkdirp
  not used in favor for [alinex-fs](https://alinex.github.io/node-fs/) mkdirs
- [minimatch](https://github.com/isaacs/minimatch)
  glob like file name matching
- chokidar
  fs-watch wrapper


### Server Health


Data Storages
-------------------------------------------------

### Relational databases

- [mysql]()


### Document stores


Command line support
-------------------------------------------------

- [Commander.js](https://visionmedia.github.io/commander.js/)
  a light-weight, expressive, and powerful command-line framework
- [Prompt](https://github.com/flatiron/prompt/)
  easy and beautiful command-line prompt
- [Colors](https://github.com/marak/colors.js/)
  easy way to get colorful output mainly on the command line.


Services
-------------------------------------------------

- [request](https://github.com/mikeal/request/)
  Simplified HTTP request client


Server
-------------------------------------------------

### Management

- [Forever](https://github.com/nodejitsu/forever/)
  a simple CLI tool for ensuring that a given node script runs continuously

### Maintenance

- [debug](https://github.com/visionmedia/debug/)
  tiny node.js & browser debugging utility for your libraries and applications
- [Winston](https://github.com/flatiron/winston/)
  extensible multi-transport async logging library

### Webserver

- [express.js](http://expressjs.com)

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

- [Mocha](https://visionmedia.github.io/mocha/)
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