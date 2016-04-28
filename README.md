Package: alinex
=================================================

This is the base package for the alinex universe. Currently only
some helpers are contained here.

It is not made to be used for other modules.

Read more about the [philosphy behind](http://alinex.github.io/develop/alinex.html).


Usage
-------------------------------------------------

### Logo

A function to bring a common logo to all alinex cli interfaces using ASCII
art can be made like:

``` coffee
alinex = require 'alinex-core'
logo = alinex.logo 'Development Helper'
console.log logo
```

### Exit Handler

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
[developer guide](http://alinex.github.io/develop/alinex/exitcodes.html).

This handler may also autodetect the exit code from the given error. To use this
call it without an exit code:

``` coffee
alinex = require 'alinex-core'
alinex.initExit()
err = new Error "Wrong parameter"
err.exit = 2
alinex.exit err
```

The exit code will be taken from:

- the err.exit field
- from the err.code name (autodetect for node errors)

This procedure gives you the possibility to define the exit code then the error
occurs but throw it first and decide later on other position if you want to give
it to the exit handler.


Alinex Modules
-------------------------------------------------

Look at my [Code page](http://alinex.github.io/code.html) (button on the top)
to get a list of currently finished modules.


License
-------------------------------------------------

Copyright 2016 Alexander Schilling

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

>  <http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
