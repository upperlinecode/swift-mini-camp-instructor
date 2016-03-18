##Introduction to Conditionals

##Students Will Be Able To
- Use boolean operators to test a statement's boolean value
- Explain the need for if/else statements in code
- Implement an if statement, an if/else statement, and an if/else-if/else statement in their code

##Motivation
Up until this point our code has executed line by line, from top to bottom. Every line of code always ran, no matter what. It can be useful to write code that will only execute if certain conditions are true. This kind of code is called conditional.

##Walkthrough
####Conditional Statements with Comparison Operators
- A well written conditional statement reads a lot like a normal sentence.
```Swift
if somethingIsTrue {
  then execute this code
}
```

- The "somethingIsTrue" part of the statement is where booleans come in. Remember that booleans can have either a true or false value. If somethingIsTrue has a value of true, then the code inside that branch will execute. If it has a value of false, nothing will happen.
```Swift
var cold = true
if cold {
  print("Don't forget to wear a coat when you go outside.")
}
//prints "Don't forget to wear a coat when you go outside."
```

```Swift
var cold = false
if cold {
  print("Don't forget to wear a coat when you go outside.")
}
//nothing happens
```

- We can even write code for both possibilities in the same block by creating a second branch in our conditional statement. Else is always the last branch of the conditional, and convers all possible outcomes that were not included in previous branches.
```Swift
var cold = false
if cold {
  print("Don't forget to wear a coat when you go outside.")
} else {
  print("Wear a t-shirt! It's beautiful outside.")
}
//prints "Wear a t-shirt! It's beautiful outside."
```

- Usually though, we want to make a comparison when deciding whether or not to execute a particular block of code. For that, we use comparison operators:

######Comparison Operators
symbol|description|example
:------: | :------: | :-----:
==|equal to|1 == 1   //true
!=|not equal to|12 != 12   //false
>|greater than|4.5 > 3.0   //true
>=|greater than or equal to|6 >= 6   //true
<|less than|1000000000 < 10   //false
<=|less than or equal to|-34 <= 19   //true
- We can incorporate these directly into the if statement
```Swift
var temperature = 28
if temperature < 32 {
  print("Don't forget to wear a coat when you go outside.")
} else {
  print("Wear a t-shirt! It's beautiful outside.")
}
//prints "Don't forget to wear a coat when you go outside." because temperature < 32 is true
```

- Sometimes we need to account for more than two possibilities. To account for this, we can add "else if" statements.
```Swift
var temperature = 58
if temperature < 32 {
  print("Don't forget to wear a coat when you go outside.")
} else if temperature > 70 {
  print("Wear a t-shirt! It's beautiful outside.")
} else {
  print("It's a little chilly, you should probably throw on a sweater.")
}
//prints "It's a little chilly, you should probably throw on a sweater." 
//because temperature < 32 and temperature > 70 are both false
```
<br>
######Break for [conditionals-practice-1](https://github.com/upperlinecode/intro-to-swift/tree/master/day-1/ConditionalsPractice1.playground)
<br>
####Conditional Statements with Logical Operators
When one branch of a conditional statement depends on more than one factore, we can use logical operators to find the truth value of the combined statement.
######Logical Operators
symbol|description|example
:------: | :------: | :-----:
!|not|!(7 == 7)   //false
&&|and|1 > 0 && 5 < 7   //true
\|\||or|4.5 == 4.5 || 5.6 == 4.3   //true
- The not operator (!) changes the boolean value of the following statement. True becomes false, false becomes true.
- The And operator (&&) connects two values, and both of these values must be true for the entire statement to be true. Otherwise, it evaluates to false. 
- The Or operator (||) connects two values as well, but only one of them needs to be true for the entire statement to be true. The statement is only false is both connected values are false.
- Using these operators, we can make much more intricate branches in our code.
```Swift
var chanceOfPrecipitation = 5
var temperature = 83
if chanceOfPrecipitation == 0 && temperature > 70{
  print("Perfect day for a ballgame!")
} else if chanceOfPrecipitation > 50 && temperature > 70 {
  print("Maybe we should bring an umbrella just in case.")
} else if chanceOfPrecipitation > 90 || temperature < 50 {
  print("We should definitely stay inside and work on our Swift today.")
} else {
  print("You can never believe the weatherman anyways.")
}
//prints "You can never believe the weatherman anyways."
```
<br>
######Continue on to [conditionals-practice-2](https://github.com/upperlinecode/intro-to-swift/tree/master/day-1/ConditionalsPractice2.playground)
