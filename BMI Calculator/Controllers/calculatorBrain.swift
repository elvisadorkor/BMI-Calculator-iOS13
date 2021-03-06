//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Elvis Adorkor on 5/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "No advice"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return color
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = height/(pow(weight, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    
    
}
