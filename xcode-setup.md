Walkthrough With Instructor


- The Swift language is one of many ways a human can give a computer a set of instructions. But a computer cannot 
understand the swift code without the help of a compiler. This is where Xcode comes in. Xcode is an Integrated 
Development Environment (IDE) that uses a compiler to make it machine-readable

- Download instructions from app store. Link here: https://developer.apple.com/xcode/download/

- To start a new project:
    - open Xcode
    - click *get started with a new playground*
    - name your file, use camelcase eg. IntroSwiftSetup
    - select ios as platform
    - select file location eg. user/development/swift
    <p align="center">
        <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-1/images/intro-xcode-1.png" height="350px" hspace="20">
    </p>

- Discuss the environment that has now been launched.
    - the code editor is in the center. This is where you will write your code.
    - the three buttons in the upper right hand corner can expand you window to include additional features. Click the center button to reveal the debug area, or console.
    <p align="center">
        <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-1/images/intro-xcode-hide-show.png" height="150px" hspace="20">
    </p>

- When you create a new playground, the code editor already has the following code in it:

```swift
// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
```

- You can run this code by clicking the blue triangle in the upper-left corner of the console.
<p align="center">
    <img src="https://github.com/upperlinecode/intro-to-swift/blob/master/day-1/images/intro-xcode-play.png" height="150px" hspace="20">
    </p>
- At this point, there is not output in the console because we have not explicitly told the computer to 
output any messages. Go ahead and give it a try.
- When we are writing code, sometimes we want to display a message on the screen. We can tell our program to do so using the print command.
- Now replace all of the code with the following line:

```swift
print("Hello, World!")
```

- Run the program again. This time, you should see 'Hello World' appear in your console. 
- If we were using this code in an iPhone app, this message would not appear on the screen. However, we
would be able to use it to test our code during development.
- This program, though simple, is a tradition amongst programmers. Congratulations! You just finished 
your first Swift program.




