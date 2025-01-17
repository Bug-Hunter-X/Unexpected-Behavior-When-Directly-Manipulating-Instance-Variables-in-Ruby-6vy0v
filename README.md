# Unexpected Behavior When Directly Manipulating Instance Variables in Ruby
This repository demonstrates an uncommon bug in Ruby related to the manipulation of instance variables using `instance_variable_set` and `instance_variable_get` methods.  Specifically, it highlights the difference between using symbols and strings as keys when working with instance variables.

## Bug Description
Directly manipulating instance variables in Ruby using `instance_variable_set` with a string representation of the instance variable name (e.g., `'@value'`) instead of a symbol (e.g., `:@value`) can lead to unexpected results. The instance variable might not be updated correctly, causing inconsistent behavior in your code.

## How to Reproduce
Run the `bug.rb` file. The code demonstrates how using a string key with `instance_variable_set` does not modify the instance variable's value while the symbol key will modify it. This inconsistency in behavior can be a tricky source of errors, particularly in larger and more complex projects.

## Solution
The `bugSolution.rb` file showcases the corrected approach. Always use symbols (`:value` instead of `'@value'`) when interacting with instance variables using `instance_variable_set` and `instance_variable_get` for consistent and predictable behavior. Using the symbol ensures proper access to the instance variable.
