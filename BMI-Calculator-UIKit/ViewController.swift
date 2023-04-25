//
//  ViewController.swift
//  BMI-Calculator-UIKit
//
//  Created by khoirunnisa' rizky noor fatimah on 13/04/23.
//

import UIKit

// Global variable - data model
var bmiDatas: [BMIModel] = []

class ViewController: UIViewController {
    
    // 1
    // Create outlet for all UI components
    
    
    // Temp-variables
    var weightValue: Float = 0
    var heightValue: Float = 0
    var bmiValue: Float = 0
    var bmiStatus = ""
    var bmiColor = UIColor.gray
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup the navigation title
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Calculator"
        
        // Setup the tab bar appearance
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white

        self.tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    
    // 2
    // Create @IBAction to input weight data and update the BMI value and the UI
    
    
    // 3
    // Create @IBAction to input height data and update the BMI value and the UI
    
    
    // 4
    // Create @IBAction to save the data into history using global variable of bmiDatas
    
    
    /// Function to get the BMI Value based on weight and height data
    func getBMIValue(weight: Float, height: Float) -> Float {
        return (weight * 10000) / (height * height)
    }
    
    /// Function to get the BMI status based on the BMI value
    func getBMIStatus(bmiValue: Float) -> String {
        switch bmiValue {
        case 0 ..< 18.5:
            bmiStatus = "Underweight"
        case 18.5 ..< 25:
            bmiStatus = "Normal"
        case 25 ..< 30:
            bmiStatus = "Overweight"
        case 30 ..< 200:
            bmiStatus = "Obese"
        default:
            bmiStatus = "Abnormal"
        }
        return bmiStatus
    }
    
    /// Function to get the BMI color based on the BMI value
    func getBMIColor(bmiValue: Float) -> UIColor {
        switch bmiValue {
        case 0 ..< 18.5:
            bmiColor = UIColor.blue
        case 18.5 ..< 25:
            bmiColor = UIColor.green
        case 25 ..< 30:
            bmiColor = UIColor.orange
        case 30 ..< 200:
            bmiColor = UIColor.red
        default:
            bmiColor = UIColor.black
        }
        return bmiColor
    }
    
}

