//
//  ViewController.swift
//  Multiples
//
//  Created by shivam kaushik on 06/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var logoImage: UIImageView!
  @IBOutlet var multipicationLabel: UILabel!
  @IBOutlet var numberTextField: UITextField!
  @IBOutlet var addButton: UIButton!
  @IBOutlet var startButton: UIButton!
  
  //intance variables
  var currentRunningSum = 0
  var inputvalue = 0
  var sumOfValue = 0
  var maxValue = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    addButton.hidden = true
    multipicationLabel.hidden = true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func startButtonPressed(sender: UIButton) {
    if numberTextField.text != "" && numberTextField.text != nil {
      startGame()
    }
  }
  

  @IBAction func addButtonPressed(sender: UIButton) {
    inputvalue = Int(numberTextField.text!)!
    maxValue = inputvalue * 10
    if sumOfValue >= maxValue {
      restartGame()
    } else {
      sumOfValue = currentRunningSum + inputvalue
      multipicationLabel.text = "\(currentRunningSum) + \(inputvalue) = \(sumOfValue)"
      currentRunningSum += inputvalue
    }
  }
  
  func restartGame() {
    multipicationLabel.text = "Press Add to add!"
    numberTextField.text = ""
    currentRunningSum = 0
    inputvalue = 0
    sumOfValue = 0
    maxValue = 0
    logoImage.hidden = false
    numberTextField.hidden = false
    startButton.hidden = false
    
    addButton.hidden = true
    multipicationLabel.hidden = true
  }
  
  func startGame() {
    logoImage.hidden = true
    numberTextField.hidden = true
    startButton.hidden = true
    
    addButton.hidden = false
    multipicationLabel.hidden = false
  }
  


}

