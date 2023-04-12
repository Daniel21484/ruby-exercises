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
puts "Hello, World!"
Hello, World!
=> nil
```
The puts method prints out a string and returns nothing, so we see nil being returned after the string is displayed.

You can explicitly refer to the nil value by using the nil literal in out code:
```Ruby
x = nil        # nil literal used here
=> false
```
It is possible to check if something is a nil type by using .nil?. For example:
```Ruby
"Hello, World!".nil?
=> false
```
An important property of the nil type is that when used in an expression, such as an if statement, it will be treated as false, as it represents an absence of content.
```Ruby
if nil 
puts "Hello, World!" 
end
=> nil
```
In the above example, the return valuse (as shown by the hash rocket =>) is nil, and the code contained within the if is not run, as nil is interpreted as being a false condition. If instead you were to do the following:
```Ruby
if 1 
puts "Hello, World!" 
end Hello, World! 
=> nil
```
Since 1 is not "nothing" or a false value, the code within the if is run and we see the output. We'll talk more about conditionals and if statements later, but just remember that nil can be used within a conditional statement, and will be treated as false.

There's an important caveat to this which can be best illustrated by the following example:
```Ruby
false == nil
=> false
```
While both false and nil are treated as negative when evaluated in an expression, they are not equivalent, as demonstrated by the above.

### Operations
#### Adding, Subtracting, and Multiplying Integers

Basic mathematical operations in Ruby are quite simple. To add two integers together just use the + operator as shown below in irb or any code editor. Make sure to type these examples into irb and feel free to play with other integers as well.

#### Division vs. Modulo

There is also an operator called the **_modulo_** operator. This is represented by the % symbol. It can be referred to as the remainder operator as well, though that is not strictly correct. (There are some subtle differences between the modulo and remainder operations). In modulo expressions, the value to the left of the % is called the **_dividend_**, and the value to the right is called the **_modulus_**.

When working with positive integers, the modulo operator returns the remainder of a division operation.

```Ruby
16 % 4
=> 0
```

That's not very interesting. What about this?

```Ruby
16 % 5
=> 1
```

Since 16 divided by 5 equals 3 with a remainder of 1, the 1 is what we get returned. Pretty fancy huh?
Now, notice what happens when I try to divide integers that don't divide evenly.

```Ruby
15 / 4
=> 3
```

When dividing integers, you will only receive an integer in return. We need a different data type if we want more precision. That's where floats come in, which we'll get to in a moment. First, though, we need to talk about something that sometimes ends up confusing students: the difference between _modulo_ and _remainder_.

#### Modulo vs. Remainder

The #remainder method computes and returns the remainder of an integet division operation:

```Ruby
16.remainder(5)
=> 1
```

Hmm... that's exactly the same result as 16 % 5. However, you can't count on that alwayse being true, as we'll see momentarily.

There is also a #divmod method that computes both integer result of the division and its modulo value.

```Ruby
16.divmod(5)
=> [3, 1]
```

In mathematics, there is a subtle, but important, difference between modulo and remainder operations. Wo won't get into the mathematical definitions, but the effect can be summarized as follows:

- Modulo operations return a positive integer when the second operand is positive, and a negative integer when the second operand is negative
- Remainder operations return a positive integer when the first operand is positive, and a negative integer when the first operand is negative.

We can see this definition at work in this table:

| a   | b   | a % b (modulo) | a.remainder(b) | a.divmod(b) |
| --- | --- | -------------- | -------------- | ----------- |
| 17  | 5   | 2              | 2              | [3, 2]      |
| 17  | -5  | -3             | 2              | [-4, -3]    |
| -17 | 5   | 3              | -2             | [-4, 3]     |
| -17 | -5  | -2             | -2             | [3, -2]     |

When working with positive integers, we don't need to worry whether we should use the modulo operator or the remainder method; the return value is positive and identical either way. However, if either number is negative, that's where things get confusing, It really isn't easy to keep the above rules in mind, especially when you don't encounter them often. To complicate matters even more, some languages use the % operator to compute the remainder instead of the modulo value.

In general, you want to avoid this problem -- if you need to determine the modulo or remainder of two integers, try to work with positive intergers exclusively. If you can't, then make sure you know exactly which operator or method you need to use when working with negative integers.

#### Multiplying and Dividing Floats

In order to get a more accurate calculation of the above division problem, we can use **floats**.

```Ruby
15.0 / 4
=> 3.75
```

Ah, that looks better. Whenever you use a float in an operation, Ruby always returns a float, even if one of the numbers is a plain integer.

You can also multiply floats to do more complex multiplication.

```Ruby
9,75 * 4.32
=> 42.120000000000005
```

#### Equality Comparison

There are times when you want to check if the values of two objects are the same. To test the equalitty of two things you can use the == operator (read == as "is equal to" or, sometimes, as "equal equal"). This compares the object on the left of the == with the object on the right and returns either true or false. True and false are called **boolean values** in most programming languages. Let's try some comparisons out in irb. Don't forget to types these examples out as well!

```Ruby
4 == 4
=> true

4 == 5
=> false
```

You can use the == operator with strings as well.

```Ruby
'foo' == 'foo'
=> true

'foo' == 'bar'
=>false
```

What happens when you type the following command in irb?

```Ruby
'4' == 4
=>false
```

This comparison returns false because we are comparing two different types.

Because '4' is a string and 4 is an integer, the == operator returns false.

#### String Concatenation

String concatenation looks a lot like addition. When you use the + operator to join two strings together, you are performing a string concatenation. Back to irb!

```Ruby
'foo' + 'foo'
=> foofoo

'foo' + 'bar'
=>foobar
```

It's pretty simple, but feel free to play around with this functionality to get a better feel for it.

Let's try something a little different. What with the following return? Try it out for yourself.

```Ruby
'1' + '1'
=>11
```

If you were thinking 2, that definitely makes sense. But since '1' and '1' are both strings, they are concatenated, not added. That's why you ended up with '11'.

What happens if we try to concatenate a string with a number?

```Ruby
'one' + 1
=>TypeError: no implicit conversion of Integer into String
	from (irb):1:in `+' 
	from (irb):1 
	from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
```

Looks like we have an error message! The interpreter is complaining that it can't implicitly convert an Integer into a String. What does that mean? In this case, it looks like we cannot add an Integer and String together.

### Type Conversion

But what if we need to add a String and an Integer together? Suppose we got some user input of '12', which is a String, but we want to increment this by 2. We know that we can't just do '12' + 2, as we'll get an error

There's a handy method that we can call which will convert a String to a Integer, and it's called to_i. You can call it on any String like this"

```Ruby
'12'.to_i
=> 12
```

You can see that this returns an Integer. Ok, we've used some new words like **method** and **returns**. These are really important to understand, and you'll be exposed to them throughout this book. For now, just know that we can call to_i on strings and then we can perform integer ierations, like adding and subtracting, on the result.

Play with to_i in irb on some strings and see what you get. You may be surprised by the results. There are also other useful conversion operations, like to_f, that you may be interested in testing out as well.

```Ruby
irb :001 > '4'.to_i 
=> 4 
irb :002 > '4 hi there'.to_i 
=> 4 
irb :003 > 'hi there 4'.to_i 
=> 0 
irb :004 > '4'.to_f 
=> 4.0 
irb :005 > '4 hi there'.to_f 
=> 4.0 
irb :006 > 'hi there 4'.to_f 
=> 0.0
```

And if you guessed that there's a similiar to_s method to convert integers and floats into strings, you would be right. We'll leave this method as an exercise for you to play around with in irb.

This is just scratching the surface of Ruby's built-in conversion methods, but it's good enough for now. Just know that there's probably a way to convert from one basic type ro another, though there may be some side effects when you do the conversion. Alwayse play around with it in irb to get a feel for the edge cases.

### Basic Data Structures

Two very common data structures that you will use as a Ruby programmer are **arrays*** and **hashes**. They will be covered in more depth later in this book, but we wanted to give you a taste of them early on for a smoother learning curve.

#### Arrays

An **array** is used to organize information into an ordered list. This list can be made up of strings, integers, floats, booleans, or any other data type. In Ruby, an array literal is denoted by square brackets [ ]. Inside the brackets you can create a list of elements separated by commas. Let's make one in irb

```Ruby
[1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
```

We've created an array of integers 1 through 5. Each element in an array can be accessed via an **index**. The indexes are numbered starting at zero. Thus, if we wanted only the first element in the array we could do this.

```Ruby
[1, 2, 3, 4, 5][0]
=>1
```

Don't worry if the [0] part threw you. We will cover arrays in much more detail later. This is just meant to show you that the first element, the number 1, is located in the 0 index of the array. Elements within an array can be retrieved by their index, which starts at 0.

#### Hashes

A **hash**, sometimes referred to as a dictionary, is a sey of key-value pairs, Hash literals are represented with curly braces { }. a key-value pair is an association where a key is assigned a specific value. A hash consists of a key, usually represented by a symbol, that poits to a value (denoted using a => ) of any type of data. Lets make some hashes to get the feel of it.

```Ruby
{:dog => 'barks'}
=> {:dog => 'barks'}
```

The above is a hash literal that specifies a single key-value pair. Like arrays, we can have multiple items in a hash if we separate them with commas, but they will not necessarily be in any specific order. Let's add some more items to our hash.

```Ruby
{:dog: => 'barks', :cat => 'meows', :pig => 'oinks'}
=> {:dog: => 'barks', :cat => 'meows', :pig => 'oinks'}
```

What if we wanted to find out what noise a cat makes? We can retrieve a value by its key:

```ruby
{:dog: => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat]
=> "meows"
```

Once again, right now it's only important that you understand these basic data structures. They are the building blocks of programming and you'll be exploring these for a long time as you grow as a Ruby developer. The most important thing to remember about hashes is that you use keys to set or retrieve values. Let's move on for now and we'll visit these concepts again later on.

### Expressions and Return

You may have noticed, indirectly at this point, that every time you enter something into irb you see the => back, which is called a _hash rocket_ (cool name, huh?), followed by whatever your Ruby expression returns. When you tyoe somnething in at the irb prompt you are creating an expression. An **expression** is anything that can be evaluated, and pretty much everything you write in Ruby is an expression. An expression in Ruby alwayse returnes something, even if itat's an error message or nil. We'll talk in more depth about return as we move on, but remember that _Ruby espressions always return a value_, even if that value is nil or an error.

### Puts vs Return

It's common for new Ruby programmers with little experience to become confused with the difference between puts and return. The confusion arises from a misunderstanding of what both puts and return are. When we call the puts method, we're telling Ruby to print something to the screen. However, puts does not return what is printed to the screen. Expressions **do** something, but they also **return** something. The value returned is not necessarily the action that was performed. Let's take a look in irb.

```Ruby
puts 'stuff'
stuff
=>nil
```

You can see the word stuff was printed to the console and then a nil, which is Ruby's way of saying 'nothing', was returned. It's important to understand that distinction. For example:

```Ruby
a = puts "stuff"
puts a
```

What should we expect? a is assigned to the vaue returned by puts "stuff", which is nil. Therefore, puts a results in "nil" being printed out. We are going to go much farther into puts and return later when we talk about methods, but we had to show you puts because we are going to be using it in fututre examples.

### Summary

This chapter covered the basic building blocks of the Ruby language. You learned some basic data types and how to combine thoes types with operators. You also learned about data structures and how to use thoes structures to hold and access data. We'll dive much deeper into these in the coming chapters, but for now, let's "learn through out fingers" and do some exercises to deepen our understanding of the basics.

