# Uncle Bob's Bowling Kata

## Description

The kata is about creating a program to calculate a ten pin bowler's score.
I have written test cases to save us some time, the aim being to get a simple test case to pass and incrementally add functionality to get more test cases to pass.

### Rules of the Game

Each game, or “line” of bowling, includes ten turns, or “frames” for the bowler.
In each frame, the bowler gets up to two tries to knock down all the pins.
If in two tries, he fails to knock them all down, his score for that frame is the total number of pins knocked down in his two tries.
If in two tries he knocks them all down, this is called a “spare” and his score for the frame is ten plus the number of pins knocked down on his next throw (in his next turn).
If on his first try in the frame he knocks down all the pins, this is called a “strike”. His turn is over, and his score for the frame

A strike value is ten plus the simple total of the pins knocked down in his next two rolls.
If he gets a spare or strike in the last (tenth) frame, the bowler gets to throw one or two more bonus balls, respectively. - These bonus throws are taken as part of the same turn. If the bonus throws knock down all the pins, the process does not repeat: the bonus throws are only used to calculate the score of the final frame.
The game score is the total of all frame scores.

Excerpt From: Emily Bache. “The Coding Dojo Handbook.”

### Kata constraints

* You have 45 minutes to complete as much as you can
* The focus is on improving our FP skills which means trying to incorporate:
  * **immutable values**: once a “variable” is set, it cannot be changed. In Ruby, this means you effectively have to treat variables like constants.
  * **no side-effects**: when passed a given value, a function must always return the same result. This goes hand in hand with having immutable values; a function can never take a value and change it, as this would be causing a side-effect that is tangential to returning a result.
  * **higher-order functions**: these are functions that allow functions as arguments, or use functions as the return value. This is, arguably, one of the most critical features of any functional language.
  * **curring**: enabled by higher-order functions, currying is transforming a function that takes multiple arguments into a function that takes one argument. This goes hand in hand with partial function application, which is transforming a multi-argument function into a function that takes less arguments then it did originally.
  * **recursion**: looping by calling a function from within itself. When you don’t have access to mutable data, recursion is used to build up and chain data construction. This is because looping is not a functional concept, as it requires variables to be passed around to store the state of the loop at a given time.
  * **lazy-evaluation**: delaying processing of values until the moment when it is actually needed. If, as an example, you have some code that generated list of Fibonacci numbers with lazy-evaluation enabled, this would not actually be processed and calculated until one of the values in the result was required by another function, such as `puts`.

FP skills list stolen from: http://www.sitepoint.com/functional-programming-techniques-with-ruby-part-i/

### Here are some things that the program will not do:

* We will not check for valid rolls.
* We will not check for correct number of rolls and frames.
* We will not provide scores for intermediate frames.