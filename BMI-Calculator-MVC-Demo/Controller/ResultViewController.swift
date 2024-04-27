//
//  ResultViewController.swift
//  BMI-Calculator-MVC-Demo
//
//  Created by doniyor normuxammedov on 26/04/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLB: UILabel!
    @IBOutlet weak var adviceLB: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLB.text = bmiValue
        adviceLB.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
