Styleguide
=================================================
This guide should give an overview of the general style within the alinex system
and it's packages. It is neither meant as a hard limit but neither as some
nice to have rules. So as much as possible this rules have to be followed.


General layout
-------------------------------------------------
Within the code I use 2 spaces for indention neither tabs because they make
reading problematic and also are not suited for coffee script if mixed with
spaces.


Variables
-------------------------------------------------
Over all modules some common variable names will be used for the same values:

- `cb` - for the callback method
- `err` - for an error message or object
- `ex` - mostly the exception in a `try...catch` block


Asynchronous code
-------------------------------------------------
Through the whole code as much as possible only asynchronous code should be used
without blocking. That brings the most performance out.

These code follows the node.js convention of providing a single callback as
the last argument of your async function. This can be achieved using the `async`
module.

To not make it too complex the async function may call its callback synchronously 
in the same eventloop or later. It is no true asynchronity by definition, so
if you need it maybe think about your code structure or call the function
through `process.nextTick()` yourself.


Error/Exception handling
-------------------------------------------------
Error and exception handling will be done in JavaScript/CoffeeScript in the
following ways:

- Synchronous code will return an Error object instead of the normal return
  value:

  myfuncSync = () ->
    x = doSomething()
    if x == 1
      return new Error "Failed calculation"
    return x

  result = myfuncSync()
  if result instanceof Error
    console.error result.message

- Asynchronouse code should send the error as first parameter to the callback
  method or `null` if no error occurred:

  myfunc = (cb) ->
    x = doSomething()
    if x == 1
      cb new Error "Failed calculation"
    else
      cb null, x

  myfunc (err, result) ->
    if err
      console.error err.message

- And at last an error may be thrown only if it is a hard error which signals
  an fatal error which may stop the overall process.

  Such an error may be catched in a try block, in a domain or on the process.

- Another solution is to use eventful methods which emit an `error` event

Read more in the [errorHandler](https://github.com/alinex/node-error/)
documentation.


Documentation
-------------------------------------------------
All the code in any language will be documented inline using comments as
possible in the specific language. No JavaDoc or alike have to be used.
Only plain markup which will be automatically detected and converted to
documentation.

In each exported method the parameters will be documented in detail and the
callback methods with their values, they will get.

Some overall documentation like this will be stored in special markup files
ending with `.md`.


Configuration
-------------------------------------------------
The general configuration is stored in files to be also available without
database connection. To make it easy readable and maintainable it should
be written in yml rather than json.


Dependencies
-------------------------------------------------
To use singleton modules the dependencies for specific versions should be as
open as possible. This makes it possible to use:

    > npm dedupe

This will flatten down the modules to the uppermost common module in hierarchy.

Peer dependencies are also possible, in which a sub module specifies which
parent it needs. This will be specified in the `peerDependencies` section.
