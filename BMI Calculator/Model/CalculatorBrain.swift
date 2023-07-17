//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kushagra Sinha on 16/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
//    var height: Int
//    var weight: Int
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float ) {
        let bmiValue = Float(weight) / Float(height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies", color: UIColor.systemBlue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle", color: UIColor.systemGreen)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies", color: UIColor.systemRed)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() ->String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
