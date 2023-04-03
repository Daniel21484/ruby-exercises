# The basics 
## Notes
### Literals
A **literal** is any notation that lets you represent a fixed value in source code. For instance, all of the following are literals in Ruby:
```Ruby
'Hello, world!'          # string literal
375                      # integer literal
3.141528                 # float literal
true                     # boolean literal
{ 'a' => 1, 'b' => 2 }   # hash literal
[ 1, 2, 3 ]              # array literal
:sym                     # symbol literal
nil                      # nil literal
```


### Strings
A **_string_** is a list of characters in a specific sequence. In programming, we often have to work with text data like names, messages, and descriptions. Ruby uses strings to represent such data. You write string literals with either single quotes ('hi there') or double quotes ("hi there") on either side of the text; note that the quotes are syntactic components, not part of the value. Both single and double quote formats create a string. However, there are some subtile differences.
If you'd like to include single quotes within your string then you have two options. You can either use the double quote method or the single quote method with escaping: 

		*'Ex 1: with double quotes
		"The man said, 'Hi there!'"
		* Ex 2: with single quotes and escaping
		'The man said. \'Hi there!\''

The backslash, or escape ( \ ) characters, tells the computer that the quotes that follow it are not meant as Ruby syntax but only as simple quote characters to be included in the string.
Double quotes allow something called string interpolation. To try it out, tyoe the following into an irb session:
```Ruby
a='ten'
puts "my favorite number is #{a}!"
```


String interpolation is a handy way to merge Ruby code with strings. The basic syntax is: #{Ruby expression goes here} ,and the returned expression will be concatenated with the sorrounding string. String interpolation only works within double quotes. You'll get quite familiar with this technique over time.

### Symbols
Ruby **_symbols_** are created by placing a colon ( : ) before a word.

	*Examples of symbols
		:name
		:a_symbol
		:"surprisingly, this is also a symbol"

Symbols don't have to be valid variable names if the symbol name is enclosed in quotes, as the last example above demonstrates.
	
Basically, a symbol is used when you want to reference something like a string but dont's every intend to print it to the screen or change it. It is often referred to as an immutable (i.e unchangeable) string. While not 100% technically correct, it is a useful mnemonic device for now.

### Numbers
**_Numbers_** are represented many ways in Ruby. The most basic form of a number is called an **_integer_**. It is represented by the whole number only, with no decimal point. A more complex form of a number is called a **_float_**. A float is a number that contains a decimal.
```Ruby
# Example of integer literals
1, 2, 3, 50, 10, 4345098098
# Example of float literals
1.2345, 2345.4267. 98.2234
```

### nil
In programming, we need a way to express "nothing", and in Ruby, we do this through something called nil. A variable with the value of nil could be described as having 'nothing' or being 'completely empty', or even just simple 'not any specific type'. A situation where this may occur is where output is expected but none is returned, such as:
```Ruby
irb :001 > puts "Hello, World!"
Hello, World!
=> nil
```
The puts method prints out a string and returns nothing, so we see nil being returned after the string is displayed.

You can explicitly refer to the nil value by using the nil literal in out code:
```Ruby
irb :002 > x = nil        # nil literal used here
=> false
```
It is possible to check if something is a nil type by using .nil?. For example:
```Ruby
irb :001 > "Hello, World!".nil?
=> false
```
An important property of the nil type is that when used in an expression, such as an if statement, it will be treated as false, as it represents an absence of content.
```Ruby
irb :001 > if nil 
irb :002 > puts "Hello, World!" 
irb :003 > end => nil
```
In the above example, the return valuse (as shown by the hash rocket =>) is nil, and the code contained within the if is not run, as nil is interpreted as being a false condition. If instead you were to do the following:
```Ruby
irb :001 > if 1 
irb :002 > puts "Hello, World!" 
irb :003 > end Hello, World! 
=> nil
```
Since 1 is not "nothing" or a false value, the code within the if is run and we see the output. We'll talk more about conditionals and if statements later, but just remember that nil can be used within a conditional statement, and will be treated as false.

There's an important caveat to this which can be best illustrated by the following example:
```Ruby
irb :001 > false == nil
=> false
```
While both false and nil are treated as negative when evaluated in an expression, they are not equivalent, as demonstrated by the above.

