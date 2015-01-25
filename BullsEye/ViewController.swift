//
//  ViewController.swift
//  BullsEye
//
//  Created by Charles Hsu on 1/25/15.
//  Copyright (c) 2015 Loxoll. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {
  
  var currentValue: Int = 50
  var targetValue: Int = 0
  var score = 0
  var round = 0
  
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var targetValueLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var roundLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    currentValue = lroundf(slider.value)
    startNewRound()
    updateLabels()
    
  }
  
  func startNewRound() {
    round++
    targetValue = 1 + Int(arc4random_uniform(100))
    slider.value = Float(currentValue)
    //println("round:\(round)")
  }
  
  func updateLabels() {
    targetValueLabel.text = String(targetValue)
    scoreLabel.text = "\(score)"
    roundLabel.text = "\(round)"
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func showAlert() {
    let difference = abs(targetValue - currentValue)
    let points = 100 - difference
    score += points
    let message = "The value of the slider is: \(currentValue)\n" +
      "The Target value is: \(targetValue)\n" +
      "The difference is \(difference)\n" +
      "You scored \(points) points"
    let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .Alert)
    //let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
    let action = UIAlertAction(title: "OK", style: .Default, handler: { void /*action*/ in
      //switch action.style {
      //case .Default:
      //  println("Default")
      //case .Cancel:
      //  println("Cancel")
      //case .Destructive:
      //  println("Destructive")
      //}
      self.startNewRound()
      self.updateLabels()
    })
    alert.addAction(action)
    presentViewController(alert, animated: true, completion: nil)
    //presentViewController(alert, animated: true, completion: ({ void in
    //  self.startNewRound()
    //}))
    //startNewRound()
  }

  @IBAction func sliderMoved(slider: UISlider) {
    println("The value of the slider is now: \(slider.value)")
    currentValue = lroundf(slider.value)
  }
  
  func alertViewCancel(alertView: UIAlertView) {
    println("alertViewCancel")
  }
  
  func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
    println("clickedButtonAtIndex")
  }
  
}

