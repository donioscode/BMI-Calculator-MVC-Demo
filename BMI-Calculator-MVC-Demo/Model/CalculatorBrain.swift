//
//  CalculateBrain.swift
//  BMI-Calculator-MVC-Demo
//
//  Created by doniyor normuxammedov on 26/04/24.
//

import UIKit


struct CalculatorBrain {
    
    
    
    
    var bmi: BMI?
    
    func getBMiValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies!", color:.blue )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
