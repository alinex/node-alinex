###
API Usage
=================================================
This module is used as API in all alinex based apps. It will help setting it up.
###

# Node Modules
# -------------------------------------------------

# include base modules
chalk = require 'chalk'


###
Logo
-------------------------------------------------
A function to bring a common logo to all alinex cli interfaces using ASCII
art can be made. The logo is designed to be output on console view.

``` coffee
alinex = require 'alinex-core'
logo = alinex.logo 'Development Helper'
console.log logo
```

You have the ability to change the logo to another included one by using an environment
setting of: `LOGO=<name>`

The resulting string is colorized using ascii escape code and may look like:

![Logo](doc/logo.png)
###

###
@param {String} [title=Application] application title
@return {String} logo like shown above to be printed on console
###
exports.logo = (title) ->
  require('./logo') title

###
Error management
-------------------------------------------------
The following code will setup handler for SIGNAL handling and also give you
handy method for exit the program with code and message.

``` coffee
alinex = require 'alinex-core'
alinex.initExit()
alinex.exit 1, new Error "Something went wrong"
```

This will:

- output the error
- output a possible err.description property
- exit the process with the given code
- auto set the code if possible

The alinex tools are based on the bash exit codes 0, 1 and 124-143. In addition the
codes 3-6 are used for NodeJS system codes and some alinex codes are set in
the range 16-120 like:

| Code | Description                             |
| ----:| --------------------------------------- |
|    0 | OK - no error                           |
|    1 | General error which should not occur    |
|    2 | Command parameter problem               |
|    3 | File system access problem              |
|    4 | Network problems                        |
|    5 | Service or system access problem        |
|    6 | No such service or address              |
|  124 | command times out                       |
|  125 | if a command itself fails               |
|  126 | Command invoked cannot execute          |
|  127 | "command not found"                     |
|  128 | Invalid argument to exit                |
|  129 | SIGHUP (Signal 1)                       |
|  130 | SIGINT like through Ctrl + C (Signal 2) |
|  131 | SIGQUIT (Signal 3)                      |
|  134 | SIGABRT or SIGIOT (Signal 6)            |
|  143 | SIGTERM (Signal 15)                     |
|  255 | Exit status out of range                |

You can find all possible codes for bash and Linux in the
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
###

###
Initialize signal handler to exit on common interrupt signals.

@return {function(<Integer>, <String>)} returns the {@link exit} function to be used.
###
exports.initExit = (cb = ->) ->
  process.on 'SIGINT', ->
    cb()
    exit 130, new Error "Got SIGINT signal"
  process.on 'SIGTERM', ->
    cb()
    exit 143, new Error "Got SIGTERM signal"
  process.on 'SIGHUP', ->
    cb()
    exit 129, new Error "Got SIGHUP signal"
  process.on 'SIGQUIT', ->
    cb()
    exit 131, new Error "Got SIGQUIT signal"
  process.on 'SIGABRT', ->
    cb()
    exit 134, new Error "Got SIGABRT signal"
  exit

###
This method will exit processing immediately and return to the OS with an error
code.

@param {integer} [code=autodetect] error code number
@param {Error} [err] error message
@description
This will output a message on `STDERR` before exiting with the defined or detected
exit code.
###
exit = exports.exit = (code, err) ->
  if typeof code is 'object' and not err?
    err = code
    code = null
  # autodetection for exit code
  unless code?
    code = unless err
      0
    else
      if err?.exit? and typeof err.exit is 'number'
        err.exit
      else if err?.code?
        switch err.code
          when 'EACCES' then 3
          when 'EADDRINUSE' then 4
          when 'ECONNREFUSED' then 6
          when 'ECONNRESET' then 5
          when 'EEXIST' then 3
          when 'EISDIR' then 3
          when 'EMFILE' then 3
          when 'ENOENT' then 3
          when 'ENOTDIR' then 3
          when 'ENOTEMPTY' then 3
          when 'EPERM' then 3
          when 'EPIPE' then 3
          when 'ETIMEDOUT' then 5
          else 1
      else
        1
  # exit without error
  process.exit code unless err
  # exit with error
  console.error chalk.red.bold "FAILED: #{err.message}"
  console.error err.description if err.description
  process.exit code
