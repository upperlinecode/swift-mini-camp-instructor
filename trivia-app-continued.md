##Trivia App Continued
So far, we've added a title label to the top of our page and a label in the center of the page that will later hold our various fun facts. The labels were pulled from the object library and we edited them using the attributes and size inspectors. We also added a background color by using the attributes inspector on the background of our storyboard.

####MVC Review
- Remember MVC? This stands for Model View Controller, and it describes the extremely popular design pattern that is used in desktop, mobile, and web applications. It's broken up into three parts"
  - The Model: this is where the data is kept. In our trivia app, this data will be an array of trivia facts.
  - The Controller: this takes the data from our model and feeds it into the view.
  - The View: this displays data to the user and let's the user input data into the application.

<br>

![source: developer.apple.com](https://developer.apple.com/library/mac/documentation/General/Conceptual/DevPedia-CocoaCore/Art/model_view_controller_2x.png "Model-View-Controller Relationship")
source: developer.apple.com
<br>
<br>

####Setting up our model
- Remember our AboutPage app that we built? Our model in that app held several pieces of data: a name, age, bio, and an array of favorite movies:
```Swift
struct About {
    let name: String = "Chad"
    let age: Int = 15
    let bio: String = "NYC Born and Bred"
    let favoriteMovies: [String] = ["Die Hard", "Casino Royal", "The Return of the King"]
}
```
- We need to create a new file to hold our model. Look at the document tree in the Navigator. In the same folder with Main.storyboard and ViewController.swift, create a new file called TriviaModel.swift (when it asks you what kind of file you want to create, select swift file).
- This time, we're going to hold our data in a struct called TriviaModel. We'll go over structs more later. For now, just remember that it's a way of holding similar data together:
```Swift
struct TriviaModel {

}
```
- For our app, we need a list of interesting facts that we will present, one by one, in the view. We are going to store this list in an array of strings. Copy and paste this array into your struct:
```Swift
struct TriviaModel {
    let facts: [String] = ["When hippos are upset, their sweat turns red.", "29th May is officially 'Put a Pillow on Your Fridge Day'.", "If you lift a kangaroo’s tail off the ground it can’t hop.", "A mantis shrimp can swing its claw so fast it boils the water around it and creates a flash of light.", "Honey does not spoil. You could feasibly eat 3000 year old honey.", "The state sport of Maryland is jousting.", "If you were to remove all of the empty space from the atoms that make up every human on earth, the entire world population could fit into an apple.", "The woolly mammoth was still around when the pyramids were being built.", "There are more possible iterations of a game of chess than there are atoms in the known universe.", "Written language was invented independently by the Egyptians, Sumerians, Chinese, and Mayans.", "It can take a photon 40,000 years to travel from the core of the sun to the surface, but only 8 minutes to travel the rest of the way to earth.", "A day on the planet Venus is longer than a year on Venus.", "The fingerprints of koala bears are virtually indistinguishable from those of humans.", "The time difference between when Stegosaurus and Tyrannosaurus lived is greater than the time difference between Tyrannosaurus and now.", "Russia is bigger than Pluto.", "Charlie Chaplin once entered a Charlie Chaplin look alike contest and lost.", "The bushes in Mario were just recolored clouds."]
}
```
####Connecting the model to the controller
- It's important to continually think of our application in terms of these three layers: the model and the view, connected by the controller. We seperate these layers so that our code is more readable, easier to debug, and easier to scale (make bigger). Luckily, files in the same Xcode project can easily communicate with each other, so sending data from one layer to the other is relatively simple. 
- In this next step, the model (TrivaModel.swift) is going to communicate with the controller (ViewController.swift) and send it our array of trivia facts.
- In the navigator, select the ViewController.swift file. In more complicated applications, there might be many controller files, but this one-page application can make do with only one. Above the viewDidLoad() method, add this line:
```Swift
let triviaModel = TriviaModel()
```
- This will put our model inside of a constant and let us easily access the data later on.
- We can test this and see if our model has been properly stored in this constant. Go into the viewDidLoad() method. This method runs right after the view finishes loading. From Xcode, we can click the play button to make the view load. In the viewDidLoad() method, print the facts array from our model. If we did everything correct, the array will appear in the console as soon as the view has loaded. Go ahead and delete the print statement after you get it to work.
```Swift
override func viewDidLoad() {
    super.viewDidLoad()
    
    print(triviaModel.facts)
}
```
####Connecting the view to the model
- It's great to make this appear in the console, but we want to make it appear in the view. Specifically, we want to replace the text in the label with the text from our facts array. 
- Bring up Main.storyboard to the editor area. Also bring up the assistant editor (button with two overlapping circles)so that you can see the ViewController at the same time. 
- If you hold Control, click the label in the center of the page, and drag it to the top of the ViewController class (right next to where we created the triviaModel constant) you will see the text "Insert Outlet or Outlet Collection" appear. Let go of the control button and a form will appear. It should be filled out as follows:
  - Connection: Outlet
  - Object: ViewController
  - Name: Fact
  - Type: UILabel
  - Storage: Weak
- Your new controller should look like this: 
```Swift
class ViewController: UIViewController {

    @IBOutlet weak var Fact: UILabel!
    let triviaModel = TriviaModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
```
- An IBOutlet is an Interface Builder object that creates an outlet from the view to the controller. We can test this outlet by assigning a new value to Fact's text when the view loads. The label has a method 'text' that we can use for this assignment.
```Swift

override func viewDidLoad() {
    super.viewDidLoad()
    Fact.text = "Whoa where did this come from!?"
}
```

####Completing the chain: pass the data from the model into the view.
- Instead of making Fact.text equal to an arbitrary string, we want to make it equal to the first element of the model's facts array. All we need to do is change our viewDidLoad() method in the viewController. Add this code and run the simulator to test it out.
```Swift
override func viewDidLoad() {
    super.viewDidLoad()
    Fact.text = triviaModel.facts[0]
}
```
####Getting to the Minimum Viable Product (MVP)
- When you are developing an application, you may have a list of product features that you want to include. However, it is time-consuming and expensive to develop your project completely before putting it on the market. Instead, you can first work towards an MVP, which is an application that has just enough features that is meets the minimum standards for your goal. In this trivia app, our MVP needs to display a trivia fact and there needs to be a button that changes the fact when clicked.
- To do this, we are going to write a new method in our model that returns a random fact.
- We'll use a Swift method arc4random_uniform to generate the random index number. This method takes in one parameter of type UInt32. Our constant arrayLength is an Int but we can cast it to UInt32. It doesn't return an integer like we need for our index, so we also need to cast the return value back to an Int. 
```Swift
 func randomFact()->String {
        let arrayLength = facts.count
        let randomIndex = rand(4)
        return facts[randomIndex]
    }
```
- And now let's change the viewDidLoad method so that we randomize the initial fact that appears when the app loads
```Swift
override func viewDidLoad() {
        super.viewDidLoad()
        
        Fact.text = triviaModel.randomFact()
    }
```
- Last on our list of tasks towards the MVP is a button that will change the displayed fact. The button will be connected to the viewController in a similar way as the label's we've added already.
- Go to the object library and add a button to the bottom of your storyboard. Change the text to 'New Fact' using the attributes inspector.
- Right click on the button and drag it into the bottom of the ViewController, just like we did when adding the IBOutlet for the label. This time, it will give you the option of adding an action in addtion to an outlet or an outlet collect. When the form pops up, change the connection to action and name it newFact. The type should be UIButton and it will be triggered by a Touch-Up-Inside event. We don't need to pass in any arguments from the view to our method, so change arguments to none.
- This will generate an empty method in our ViewController. Any code inside this method will execute whenever the button is pushed. All we need to do is add the same line of code that we used in the viewDidLoad method to set the original value of the label. This is what it should look like when it's done.
```Swift
@IBAction func newFact() {
        Fact.text = triviaModel.randomFact()
    }
```
- And that's it! We have our minimum viable product. Give it a test and see how it works.

####Cleaning up the View
- One problem with our current app is that the labels are too small, and some of our facts won't fit. To fix this, click on the label and go to the attributes inspector. You can increase the number of lines that the label takes up, and increase the vertical size of the label using the size inspector so that three lines of text can fit in the box.
  - While testing the size of the label and the increased number of lines, add a longer string to the default label so you can immediately see how your changes affect the content's fit.
- By right-clicking on an element in your view and dragging the mouse to nearby objects in the view, you can also add constraints to control the positioning of the view's elements. We'll talk more about this tomorrow, but for now take a look at [this page](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithConstraintsinInterfaceBuidler.html) in the documentation.
####Keep building
- Keep building this project out. When you aren't sure how to do something, work through the problem with a partner. Go to google for help. Consult the Swift documentation, Stack Overflow, blogs, or any resource you can find. 
  - Refactor the newFact method so that it never repeats the same fact twice













