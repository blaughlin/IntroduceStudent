//
//  ViewController.swift
//   IntroduceStudent
//
//  Created by Bernard Laughlin on 12/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var schoolNameTextField: UITextField!
    @IBOutlet var yearSegmentControl: UISegmentedControl!
    @IBOutlet var morePetsStepper: UIStepper!
    @IBOutlet var morePetsSwitch: UISwitch!
    @IBOutlet var hometownTextField: UITextField!
    @IBOutlet var numberOfPetsLabel: UILabel!
    

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func changeBackgroundColorDidTapped(_ sender: UIButton) {
        let colorArray = [UIColor.systemRed, UIColor.systemBrown, UIColor.systemGray, UIColor.systemMint,UIColor.systemTeal, UIColor.systemBackground, UIColor.systemCyan, UIColor.systemPink, UIColor.systemPurple, UIColor.systemIndigo, UIColor.systemYellow, UIColor.systemOrange]
        myView.backgroundColor = colorArray.randomElement()!
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)

        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!)\(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). My hometown is \(hometownTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets. "
        
        // Creates the alert where we pass in our message, which is our introduction
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

