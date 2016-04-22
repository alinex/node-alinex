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

### Error Codes

The following code will setup handler for SIGNAL handling and also give you
a handy method for exit the program with code and message.

``` coffee
alinex = require 'alinex-core'
alinex.initExit()
alinex.exit 1, "Something one wrong"
```


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
