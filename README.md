# BullsEye

# To-do list
- 😐 Put a button on the screen and label it “Hit Me!”
- 😐 When the player presses the Hit Me button the app has to show an alert popup to inform the player how well she did. 
- Somehow you have to calculate the score and put that into this alert.
- Put text on the screen, such as the “Score:” and “Round:” labels. Some of this text changes over time, for example the score, which increases when the player scores points.
- Put a slider on the screen and make it go between the values 1 and 100.
- Read the value of the slider after the user presses the Hit Me button.
- Generate a random number at the start of each round and display it on the screen. This is the target value.
- Compare the value of the slider to that random number and calculate a score based on how far off the player is. You show this score in the alert popup.
- Put the Start Over button on the screen. Make it reset the score and put the player back into the first round.
- Put the app in landscape orientation.
- Make it look pretty. :-)

# The general flow of events in an app

!()[http://i.imgur.com/VTtBviG.png]

```swift
let action = UIAlertAction(title: "OK", style: .Default, handler: { void in
  // start a new round after user click OK
  self.startNewRound()
  self.updateLabels()
})
alert.addAction(action)
presentViewController(alert, animated: true, completion: nil)
//startNewRound()
```

# Add the slider and the text labels

# Reference

- iOS Apprentice 1 Getting Start from Ray Wenderlich http://www.raywenderlich.com
- How would I create a UIAlertView in Swift? http://stackoverflow.com/questions/24022479/how-would-i-create-a-uialertview-in-swift
