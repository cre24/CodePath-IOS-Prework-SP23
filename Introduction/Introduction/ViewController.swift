//
//  ViewController.swift
//  Introduction
//
//  Created by Ce'Niyah Ellison on 12/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolTextField: UITextField!
    
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var Stepper: UIStepper!
    
    @IBOutlet weak var NumberofPetsLabel: UILabel!
    
    @IBOutlet weak var Switch: UISwitch!
    
    @IBOutlet weak var HobbiesTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        NumberofPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend the \(SchoolTextField.text!). I am currently in my \(year!) year and I own \(NumberofPetsLabel.text!) dogs. It is \(Switch.isOn) that I want more pets in the future. Some of my favorite hobbies include: \(HobbiesTextField.text!)"
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Pleasure to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}

