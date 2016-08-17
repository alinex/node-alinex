Base System: Readme
=================================================

[![GitHub watchers](
  https://img.shields.io/github/watchers/alinex/node-core.svg?style=social&label=Watch&maxAge=2592000)](
  https://github.com/alinex/node-core/subscription)<!-- {.hidden-small} -->
[![GitHub stars](
  https://img.shields.io/github/stars/alinex/node-core.svg?style=social&label=Star&maxAge=2592000)](
  https://github.com/alinex/node-core)
[![GitHub forks](
  https://img.shields.io/github/forks/alinex/node-core.svg?style=social&label=Fork&maxAge=2592000)](
  https://github.com/alinex/node-core)<!-- {.hidden-small} -->
<!-- {p:.right} -->

[![npm package](
  https://img.shields.io/npm/v/alinex-core.svg?maxAge=2592000&label=latest%20version)](
  https://www.npmjs.com/package/alinex-core)
[![latest version](
  https://img.shields.io/npm/l/alinex-core.svg?maxAge=2592000)](
  #license)<!-- {.hidden-small} -->
[![Gemnasium status](
  https://img.shields.io/gemnasium/alinex/node-core.svg?maxAge=2592000)](
  https://gemnasium.com/alinex/node-core)
[![GitHub issues](
  https://img.shields.io/github/issues/alinex/node-core.svg?maxAge=2592000)](
  https://github.com/alinex/node-core/issues)<!-- {.hidden-small} -->


This is the base package for the alinex namespace. Currently only
some helpers are contained here.

It is not made to be used for other modules. Currently it contains:
- the app logo (for console)
- error management

> Read more about the [philosphy behind](https://alinex.github.io/develop/alinex.html).

__Read the complete documentation under
[https://alinex.github.io/node-core](https://alinex.github.io/node-core).__
<!-- {p: .hide} -->


Install
-------------------------------------------------

[![NPM](https://nodei.co/npm/alinex-core.png?downloads=true&downloadRank=true&stars=true)
  ![Downloads](https://nodei.co/npm-dl/alinex-core.png?months=9&height=3)
](https://www.npmjs.com/package/alinex-core)

### API Integration

To do this you install it into your own module:

``` sh
# from within your module directory
sudo npm install --save alinex-core
```


Usage
-------------------------------------------------

### Logo

You can get an logo easily to be printed on the console with the application title
included:

``` coffee
alinex = require 'alinex-core'
logo = alinex.logo 'Development Helper'
console.log logo
```

### Error Management

The following code will setup handler for SIGNAL handling and also give you
a handy method for exit the program with code and message.

``` coffee
alinex = require 'alinex-core'
alinex.initExit()
alinex.exit 1, new Error "Something went wrong"
```

This will:

- output the error
- output a possible err.description property
- exit the process with the given code

You can find the possible codes for alinex in the
[developer guide](https://alinex.github.io/develop/alinex/exitcodes.html).

> See the separate pages for the {@link index.coffee} for more details.


Alinex Modules
-------------------------------------------------

Look at my [Code page](https://alinex.github.io/code.html) (button on the top)
to get a list of currently finished modules.


License
-------------------------------------------------

(C) Copyright 2016 Alexander Schilling

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

>  <https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
