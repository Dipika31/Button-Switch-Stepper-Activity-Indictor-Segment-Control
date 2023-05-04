//
//  ViewController.swift
//  Button, Switch, Stepper, Activity Indictor, Segment Control
//
//  Created by Choudhary Dipika on 19/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    
    var arr = [UIImage(named: "Dog"),UIImage(named: "Cat"),UIImage(named: "Tiger"),UIImage(named: "Elephant")]
    
    override func viewDidLoad() {
       super.viewDidLoad()
        image.image = arr[0]
        stepperLabel.text = "Qauntity : 1"
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
        switchOutlet.isOn = false
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0
        {
            image.image = arr[0]
        }
        else if segmentControl.selectedSegmentIndex == 1
        {
            image.image = arr[1]
        }
        else if segmentControl.selectedSegmentIndex == 2
        {
            image.image = arr[2]
        }
        else
        {
            image.image = arr[3]
        }
    }
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperLabel.text = "Qauntity : \(Int(stepper.value).description)"
    }
    
    
    @IBAction func buyButton(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if switchOutlet.isOn == true
        {
            view.backgroundColor = .cyan
        }
        else
        {
            view.backgroundColor = .white
        }
    }
    
}

