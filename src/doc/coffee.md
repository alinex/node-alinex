CoffeeScript Tipr & Tricks
=================================================

CoffeeScript is used as development language because it is very easy to write
and read. In my opinion it makes development and maintenance easier and faster.
Specially in the callback sequences of JavaScript.

This page lists some tricks and tips which are mostly not mentioned in the
official docs.


Strings
-------------------------------------------------

### Check for substring

    if ~message.indexOf 'test'

The above syntax uses the tilde as bitwise or operator to get a boolean
readable value. If the substring is found it will be true, and false (0) if it
isn’t.

Or use the negation:

    if !~message.indexOf 'test'


Control flow
-------------------------------------------------

### Try without catch

    try
      funcWhichMayThrowError()

If you ommit the catch the error will be supressed.

    try {
      funcWhichMayThrowError();
    } catch (_error) {}


Callbacks
-------------------------------------------------

To prevent checking for a given callback method on every call you may give it
an empty default function on parameter definition:

    test = (src, cb = -> ) ->
      console.log 'do something'
      cb()

