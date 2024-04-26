//
//  ViewController.swift
//  BMI-Calculator-MVC-Demo
//
//  Created by doniyor normuxammedov on 25/04/24.
//

import UIKit


class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var calculateBtn: UIButton!
    
    @IBOutlet weak var heightLB: UILabel!
    
    @IBOutlet weak var weightLB: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderAction(_ sender: UISlider) {
     let height = "\(String(format: "%.2f", sender.value))m"
        heightLB.text = height
        print("\(height)")
    }
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        let weight = "\(String(format: "%.0f", sender.value))kg"
        weightLB.text = weight
        print("\(weight)")
    }
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        var bmi = weight / (height * height)
        print(String(format: "%.1f", bmi))
    }
    
}
