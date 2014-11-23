Package: alinex
=================================================

This is the base package for the alinex universe. Currently only
containing some overall description and rules for all the individual mosules.

Maybe later it will make a whole system out of all the modules.


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


Alinex Modules
-------------------------------------------------

List of modules which are released as part of the alinex universe, but may be
used independently.

- [alinex-make](https://alinex.github.io/node-make/) - build tool
- [alinex-error](https://alinex.github.io/node-error/) - enhanced error reporting
- [alinex-fs](https://alinex.github.io/node-fs/) - enhanced filesystem tools
- [alinex-util](https://alinex.github.io/node-util/) - String, Array, Object utilities
- [alinex-config](https://alinex.github.io/node-config/) - configuration management
- [alinex-validator](https://alinex.github.io/node-validator/) - validation and sanitize of values
- [alinex-spawn](https://alinex.github.io/node-spawn/) - process control wrapper
- [alinex-monitor](https://alinex.github.io/node-monitor/) -
  server and service monitoring
- [alinex-monitor-sensor](https://alinex.github.io/node-monitor-sensor/) -
  sensors for monitoring

In development are currently also:

- [alinex-server](https://alinex.github.io/node-config/) -
  express.js based webserver


Roadmap
-------------------------------------------------

There is no real roadmap for the time and funtionality. It all depends on my
personal time and interests. But I will give a short overview what is planned
for the next year:

- base development system - done
- basic web server - in work
- server monitor (as module) - in work
- modular webapp system
- demo context module
- basic login management
- mongo db support
- admin console through web (as module)

After that more data storages, queue support and more will come
with modules for user management, right management... and of course more real
applications.


Development
-------------------------------------------------

Find additional information in the following documents:

### Development

- [Development Guide](src/doc/developguide.md)
- [File Structure](src/doc/filestructure.md)
- [Development Tools](src/doc/developtools.md)
- [Ideas](src/doc/ideas.md)

### Tips and Tricks

- [JavaScript](src/doc/javascript.md) - language
- [CoffeeScript](src/doc/coffee.md) - language
- [npm](src/doc/npm.md) - package manager
- [git](src/doc/git.md) - source code repository
- [atom](src/doc/atom.md) - editor
- [sublime](src/doc/sublime.md) - editor

### List of Helper Tools

- [Third Party Modules](src/doc/3rdparty.md)

### General Installation and Usage

- [Install](src/doc/install.md)


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
