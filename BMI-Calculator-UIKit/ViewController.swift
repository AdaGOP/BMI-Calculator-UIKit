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
    
    // Outlet for all UI components
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var bmiStatusLabel: UILabel!
    
    // Temp-variables
    var weightValue: Float = 0
    var heightValue: Float = 0
    var bmiValue: Float = 0
    var bmiStatus = ""
    var bmiColor = UIColor.gray
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Calculator"
        
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white

        self.tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    @IBAction func inputWeight(_ sender: UISlider) {
        weightValue = sender.value
        bmiValue = getBMIValue(weight: weightValue, height: heightValue)
        bmiStatus = getBMIStatus(bmiValue: bmiValue)
        bmiColor = getBMIColor(bmiValue: bmiValue)
        
        updateUI()
    }
    
    @IBAction func inputHeight(_ sender: UISlider) {
        heightValue = sender.value
        bmiValue = getBMIValue(weight: weightValue, height: heightValue)
        bmiStatus = getBMIStatus(bmiValue: bmiValue)
        bmiColor = getBMIColor(bmiValue: bmiValue)
        
        updateUI()
    }
    
    func updateUI() {
        weightLabel.text = String(format: "%.2f", weightValue)
        heightLabel.text = String(format: "%.2f", heightValue)
        bmiValueLabel.text = String(format: "%.2f", bmiValue)
        bmiStatusLabel.text = "\(bmiStatus)"
        bmiStatusLabel.textColor = bmiColor
    }
    @IBAction func saveToHistory(_ sender: UIButton) {
        bmiDatas.append(
            BMIModel(date: Date(),
                     bmiValue: bmiValue,
                     bmiStatus: bmiStatus,
                     bmiColor: bmiColor)
        )
    }
    
    func getBMIValue(weight: Float, height: Float) -> Float {
        return (weight * 10000) / (height * height)
    }
    
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

