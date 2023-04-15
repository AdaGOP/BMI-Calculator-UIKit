//
//  BMIModel.swift
//  BMI-Calculator-UIKit
//
//  Created by khoirunnisa' rizky noor fatimah on 15/04/23.
//

import UIKit

struct BMIModel: Identifiable {
    var id = UUID()
    var date: Date
    var bmiValue: Float
    var bmiStatus: String
    var bmiColor: UIColor
    
    init(date: Date, bmiValue: Float, bmiStatus: String, bmiColor: UIColor) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let string = dateFormatter.string(from: date)
        self.date = dateFormatter.date(from: string) ?? date
        self.bmiValue = bmiValue
        self.bmiStatus = bmiStatus
        self.bmiColor = bmiColor
    }
    
}

