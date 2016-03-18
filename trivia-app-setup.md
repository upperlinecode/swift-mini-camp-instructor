##Beginning an Xcode Project from Scratch
####Getting Started
- Open Xcode and select "Create a new Xcode Project"
- Xcode presents you with many types of boilerplate code (code that is written for us so that we start with a partially written app). Select "Single View Application" under "iOS application".
- Call your product "TriviaApps", the language should be Swift, and the Devices should be iPhone.
- There are two main tasks we need to complete to have a functioning app: we need to create a layout of elements that will be viewed on the screen, and also to create a backend that will handle interaction with our view elements.

####Adding a Title
- At the bottom of the utilities bar is a library where we can access pre-built tools to add to our app. Selecting the third icon at the top of this box will show you the Object Library (the icon for this is a circle with a square inside).
- There is a search tool at the bottom. Search for the Label object and drag it on to the page.
- We need to change the text and the size of this label. We could do it directly on the view but we have more control if we do it in the utilities bar.
  - First, go to the attributes inspector. (select the downward-pointing arrow at the top of the utilities bar). While in the attributes inspector, click on the label. At the top of the bar, you will see options for changing the text, colors, allignment, and more. For the text, change it from 'label' to whatever you want to title your app. Then, take a minute and play with some of the other buttons. Change the color, select the highlighter; become familiar with your dev environment.
  - Next, go to the size inspector. This icon is next to the attributes inspector's and is shaped like a ruler. Use the arrows next to the x values to adjust the width until your text fits inside of the label box.
- We want to position this in the center of the page and against the top margin. Xcode has a feature for aligning elements of the view, so blue lines appear when you are aligned with a margin, at the horizontal or vertical center of the view, or when you line up with the edge of another object. Give it a try. Move your label to the top center.
 
####Try it Yourself
We will pick up more of this tomorrow. But before that, try to do a few things on your own. If you're not sure how to do something, first look back and see if we did a similar task earlier. Make sure to talk out any problems with the person sitting next to you. If you both are still having trouble, go to the internet! Try to search with specific keywords, not long questions. Results from developer.apple.com are great, and high-voted answers on stack overflow can be very helpful.
- Try to add a few more things to this app:
  - Add another label. Give it the text 'this will be a fun fact tomorrow!'. Center it horizontally and vertically on the page. 
  - Change the background color of the whole app.
  - Add a picture to your app! (hint: you will need a different type of object from the Object Library for this)
