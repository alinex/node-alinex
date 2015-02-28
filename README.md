Package: alinex
=================================================

This is the base package for the alinex universe. Currently only
containing some overall description and rules for all the individual mosules.

Maybe later it will become a whole system out of all the modules.


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

Just now it is a modular, flexible and powerful toolset for web applications.
It aims to help the developer to create individual solutions in a fast and easy
but stable way.

The alinex package itself will become the base system which has a management
console for easy management:

- search for alinex applications
- install new alinex packages
- configure
- remove packages
- start and stop applications


Roadmap
-------------------------------------------------

There is no real roadmap for the time and funtionality. It all depends on my
personal time and interests. But I will give a short overview of the big
points, what is planned for this year:

- make modules more robust
- more web server module support
- base alinex application

See the [Planning Board](https://trello.com/b/lOY5hCx7/node-js) for more up to
date information of there I'm working at. Also the [Ideas](src/doc/ideas.md)
page will hold some general ideas and thoughts.


Development
-------------------------------------------------

The base rules which are used in the development of the alinex modules are:

- [Development Guide](src/doc/developguide.md)
- [File Structure](src/doc/filestructure.md)
- [Development Tools](src/doc/developtools.md)
- [CoffeeScript](src/doc/coffee.md) - language
- [JavaScript](src/doc/javascript.md) - language
- [Install](src/doc/install.md)
- [Modules](src/doc/modules.md)

And here are some help with the development tools:

- [npm](src/doc/npm.md) - package manager
- [git](src/doc/git.md) - source code repository
- [atom](src/doc/atom.md) - editor
- [sublime](src/doc/sublime.md) - editor


Alinex Modules
-------------------------------------------------

List of modules which are released as part of the alinex universe, but may be
used independently.

### Tools

#### [builder](https://alinex.github.io/node-builder/)
> This is a build tool for the developer to make the process of maintaining node
> modules as easy as possible. All alinex modules are managed and maintained using
> this tool and it is integrated as development dependency in all packages.

#### [worktime](https://alinex.github.io/node-worktime/)
> Command line tool to log work times on different projects or tickets in an easy
> way. This helps in calculation of costs based on real work times.

### Helper

#### [async](https://alinex.github.io/node-async/)
> Asynchronous control flow made easy. This module is a superset to the popular
> async.js and adds more useful methods.

#### [error](https://alinex.github.io/node-error/)
> Enhanced error reporting with support for source-maps like used in the alinex
> coffee script modules.




The following modules are in a beta stadium:

- [alinex-util](https://alinex.github.io/node-util/) - String, Array, Object utilities
- [alinex-config](https://alinex.github.io/node-config/) - configuration management
- [alinex-validator](https://alinex.github.io/node-validator/) - validation and sanitize of values
- [alinex-fs](https://alinex.github.io/node-fs/) - enhanced filesystem tools
- [alinex-mysql](https://alinex.github.io/node-mysql/) - easy mysql queriing
- [alinex-spawn](https://alinex.github.io/node-spawn/) - process control wrapper
- [alinex-server](https://alinex.github.io/node-config/) -
  express.js based webserver
- [alinex-monitor](https://alinex.github.io/node-monitor/) -
  server and service monitoring
- [alinex-monitor-sensor](https://alinex.github.io/node-monitor-sensor/) -
  sensors for monitoring

And the outdated modules:

- [alinex-make](https://alinex.github.io/node-make/) - now alinex-builder
- [alinex-once](https://alinex.github.io/node-once/) - included in alinex-async


License
-------------------------------------------------

Copyright 2014 Alexander Schilling

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

>  <http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
