Alinex Node Server
=================================================

Powered by [node.js](http://nodejs.org)

Find [Code on GitHub](https://github.com/alinex/node-core)

Redesign!!!
-------------------------------------------------
This module will be completely redesigned into a more modular structure.
Keep in touch to see the alinex-... modules emerging the next weeks.


Why I created it?
-------------------------------------------------

As I got more into the concept of node.js I found out that this is the ideal
solution for the alinex platform. I use this project to check new technologies
out and hopefully bring it more on the way than my php server part just now.

I worked further on creating a modular system with some of the great modules
available. Hardest thing is to find the best module for each job out of the
great repository.
With this project I went to new land (for me) in the web technologies and tried
lots of the current propagated technologies and patterns out.


What is alinex?
-------------------------------------------------

Just now it is a modular, flexible and powerful framework for web applications.
It aims to help the developer to create individual solutions in a fast and easy
but stable way.

Till now it is only a base system missing some major parts but I will keep
on to fulfill the system.


Features
-------------------------------------------------

The following features describe the overall platform and it's core system.
Find out more in the application specific context modules like:

- [demo](http://alinex.github.io/node-demo/)
  a base implementation for modules

### Development

- fast prototyping
- easy to read languages
- thin development framework
- automatic compile, documenting, testing
- easy to install
- good package management system
- modular design using alinex-modules, a subset of node-modules
- fully documented

### Quality and Quantity

- properly styled and documented
- event-oriented, non-blocking code
- easy to extend using modules
- easy customizable through configuration files
- parallel execution
- fast execution
- high connection through put
- overload protection
- templates for easy layout adjustment

### Security

- change uid and gid support
- secure session cookies if only https
- session cookies not available for client
- content security policy support
- support for cross site request forgery protection

### Functionality

- ssl support
- easy configuration
- configurable logging
- dos attack prevention
- interactive admin shell
- easy template system
- mvc on server and client

### Core Technologies

- Language: [Iced CoffeeScript](http://maxtaco.github.io/coffee-script/)
[Coffee-Script](http://coffeescript.org/) and JavaScript
- Documentation: [Markdown](http://daringfireball.net/projects/markdown/syntax)
  and [docker](http://jbt.github.io/docker/src/docker.js.html) to generate HTML
- Interpreter: [node.js](http://nodejs.org/) (V8)
- Dependency Management [NPM](https://npmjs.org/)
- Testing: [Mocha](http://visionmedia.github.io/mocha/)
  with [chai](http://chaijs.com),
  [sinon](http://sinonjs.org) and
  [casper.js](http://casperjs.org)
- IDE: [sublime_text](http://www.sublimetext.com) and extensions
  using [PackageControl](https://sublime.wbond.net/)
- Framework: [express.js](http://expressjs.com)
- Template: [jade](http://jade-lang.com),
  [stylus](http://learnboost.github.io/stylus/),
  [nib](http://visionmedia.github.io/nib/)
- Logging: [winston](https://github.com/flatiron/winston)
- Client: [AngularJS](http://docs.angularjs.org),
  [browserify](https://github.com/substack/node-browserify)


Roadmap
-------------------------------------------------

There is no real roadmap for the time and funtionality. It all depends on my
personal time and interests. But I will give a short overview what is planned
for now:

- base development system
- new modular packaging system
- demo context module
- basic login management
- mongo db support
- admin console through web (as module)
- server monitor (as module)

After that more data storages, verification, queue support and more will come
with modules for user management, right management...


Read more
-------------------------------------------------

Find additional information in the following documents:

### Development

- [Development](src/doc/develop.md.html)
- [Styleguide](src/doc/styleguide.md.html)
- [Server Code](src/server/README.md.html)
- [NPM Modules](src/doc/npm.md.html)
- [Client Code](src/client/README.md.html)

### Installation

* [Installation](src/doc/install.md.html)
* [Security Issues](src/doc/security.md.html)

### Alinex packages

* [Packages](src/doc/packages.md.html)
* [Installation](src/doc/install.md.html)


License
-------------------------------------------------

Copyright 2013-2014 Alexander Schilling

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

>  <http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

