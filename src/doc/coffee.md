CoffeeScript Tipr & Tricks
=================================================

CoffeeScript is used as development language because it is very easy to write
and read. In my opinion it makes development and maintenance easier and faster.
Specially in the callback sequences of JavaScript.

This page lists some tricks and tips which are mostly not mentioned in the
official docs.

Also in this documentation which is aimed for the alinex developer I often use
examples in coffee script. While in description of modules which may be used
anywhere I will use javascript so anybody can read it.


Strings
-------------------------------------------------

### Check for substring

    if ~message.indexOf 'test'

The above syntax uses the tilde as bitwise or operator to get a boolean
readable value. If the substring is found it will be true, and false (0) if it
isn’t.

Or use the negation:

    if !~message.indexOf 'test'


Objects
-------------------------------------------------

### Check for empty object

    unless object? and Object.keys(options).length

This will run the following code if the object under test is not defined or is
an empty object.


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


Classes
-------------------------------------------------

Classes are made really easy using CoffeeScript:

    # define a class
    class Test
      # make a constructor method
      constructor: ->

    # create instance
    t = new Test

Use the `@` sign in parameters to store the value in the same instance property:

    class Test
      # store given name in this.name
      constructor: (@name) ->

    # add another prototype to class
    Test::done = true

Inheritance is also made easy:

    class Test
      constructor: (@name) ->

    # extend the class
    class Test2 extends Test
      constructor: ->
        # call the parent constructor
        super 'numberTwo'

Local variables are created using `=` but properties are defined using `:`:

    class Test
      # local class variable/function
      foo = 1
      # instance variable/function
      bar: 2
      # or from the constructor
      constructor: ->
        @baz = 3

You may also use static properties/funtions

    class Test
      # static class variable/function
      @foo: 1
      @bar: (name) -> 
      constructor: ->
        # access statics
        Test.bar()
        # or
        @constructor.bar()
        
    # access from outside
    Test.foo
    Test.bar 'baz'
