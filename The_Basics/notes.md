# The basics 
## Notes
### Literals
	* A literal is any notation that lets you represent a fixed value in source code. For instance, all of the following are literals in Ruby:

		* 'Hello, world!'          # string literal
		*375                      # integer literal
		*3.141528                 # float literal
		*true                     # boolean literal
		*{ 'a' => 1, 'b' => 2 }   # hash literal
		*[ 1, 2, 3 ]              # array literal
		*:sym                     # symbol literal
		*nil                      # nil literal

### Strings
	*A **string** is a list of characters in a specific sequence. In programming, we often have to work with text data like names, messages, and descriptions. Ruby uses strings to represent such data. You write string literals with either single quotes ('hi there') or double quotes ("hi there") on either side of the text; note that the quotes are syntactic components, not part of the value. Both single and double quote formats create a string. However, there are some subtile differences.

	If you'd like to include single quotes within your string then you have two options. You can either use the double quote method or the single quote method with escaping: 

		*'Ex 1: with double quotes
		"The man said, 'Hi there!'"
		* Ex 2: with single quotes and escaping
		'The man said. \'Hi there!\''

	The backslash, or escape (\) characters, tells the computer that the quotes that follow it are not meant as Ruby syntax but only as simple quote characters to be included in the string.

	Double quotes allow something called string interpolation. To try it out, tyoe the following into an irb session:

		* a='ten'
		* "My favorite number is #{a}!"

	String interpolation is a handy way to merge Ruby code with strings. The basic syntax is: #{Ruby expression goes here} ,and the returned expression will be concatenated with the sorrounding string. String interpolation only works within double quotes. You'll get quite familiar with this technique over time.

### Symbols
	*Ruby stmbols are created by placing a colon ( : ) before a word.

		*Examples of symbols
		:name
		:a_symbol
		:"surprisingly, this is also a symbol"

	*Symbols don't have to be valid variable names if the symbol name is enclosed in quotes, as the last example above demonstrates.
	
	Basically, a symbol is used when you want to reference something like a string but dont's every intend to print it to the screen or change it. It is often referred to as an immutable (i.e unchangeable) string. While not 100% technically correct, it is a useful mnemonic device for now.

### Numbers
	*

