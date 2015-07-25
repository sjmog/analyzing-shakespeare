# Analyzing Shakespeare

A simple program that accepts a Shakespeare play (defaulting to [Macbeth](http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml)) and prints the number of lines spoken by each character in that play.

Exercise courtesy of [Upcase](http://upcase.com) by [Thoughtbot](http://thoughtbot.com).

### Running the program
To run the program, load up a console and type:

```sh
ruby macbeth_analyzer.rb
```

### Instructions

Sample usage/output (using made-up numbers):

```sh
$ ruby macbeth_analyzer.rb
  543 Macbeth
  345 Banquo
  220 Duncan
  (etc.)
```

You can find an XML-encoded version of Macbeth here: http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml. Your program should download and parse this file at runtime.

Your solution must be tested, preferably via TDD. Running your tests should not download the play from the ibiblio.org server.

Note: some lines are attributed to a speaker called "ALL". Your program should ignore these.