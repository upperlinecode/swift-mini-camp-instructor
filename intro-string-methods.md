##A Closer Look at Strings

###Students Will Be Able To
- Explain the difference between a string's properties and its methods
- Use a string's properties and methods with the dot operator
- Retrieve individual characters from a string

###Motivation
Strings are common across programming languages, and knowing how to use them is an important fundamental skill. Strings are a special data type because they come with a series of build-in methods and accessible properties. Learning about these will be a good introduction to functions for students before functions are fully introduced tomorrow.

###Anticipated Pain Points
- It is very intimidating to look at documentation, so be clear that this is an important skill but it takes time to become comfortable with it. When you see a good opportunity to look something up as a class, look up a method in the documentation on the projector and talk through the process. Check out Stack Overflow with them and show them how to find a reliable answer.
- Chaining methods, like greeting.startIndex.successor() can be confusing. Experiment with this as a class, and encourage them to experiment as much as possible.
- You cannot change a string unless it is stored as mutable data (a variable).

###Walkthrough
Strings are a special data type that come with their own properties and methods. This just means that a string is able to tell us information about itself (instance properties), and it also has a set of actions that it can perform on itself (instance methods).


Instance Properties |     Instance Methods
:----------------:  |    :------------------:
characters          |     append(_: Character)
endIndex            |     hasPrefix(_:)
lowercaseString     |     hasSuffix(_:)
startIndex          |     insert(_:atIndex:)
uppercaseString     |     removeAtIndex(_:)

[Full list of String instance properties and instance methods in Swift](https://developer.apple.com/library/prerelease/mac/documentation/Swift/Reference/Swift_String_Structure/index.html#//apple_ref/doc/uid/TP40015181-CH1-DontLinkElementID_31)

- Open up a new sandbox and assign your name to a variable called myName. To use an instance property or method on a string, just attach the property/method to the end of the string or variable with a "." Give it a try! What happens when you type in myName.uppercaseString on the next line?

####More tools: 
```Swift 
var greeting = "Hi! My name is Jim, what's yours?" 
```

- To retrieve, or return, a single character in a string, start by adding square brackets at the end of the string.
```Swift
greeting[]
```

- Inside the brackets, we'll add the location, or index, of the first character in the string:
```Swift
greeting[greeting.startIndex]. //This works the same way for the endIndex property.
```

- To get an index in the middle of a string, we can add the advancedBy(), successor(), or predecessor() methods after startIndex() or endIndex(). For instance, one way to return the "!" from this string would be like this:

```Swift
greeting[greeting.startIndex.successor().successor()]
```

We could also do this:
```Swift
greeting[greeting.startIndex.advanceBy(2)]
```

In programming, there are always multiple ways to do accomplish a task. As you continue learning, trying different methods, and observing how other people solve the same problems, you'll get better at picking the best tool for the job.

###Conclusion
- Strings are sequences of characters
- You can use special instance methods and properties by adding the method or property to the end of the string, connecting the two with a period.
