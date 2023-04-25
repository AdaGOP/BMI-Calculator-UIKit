//
//  BMIDatas.swift
//  BMI-Calculator-UIKit
//
//  Created by khoirunnisa' rizky noor fatimah on 25/04/23.
//

import SwiftUI

class BMIDatas: ObservableObject {
    @Published var data: [BMIModel] = []
    
    init(data: [BMIModel]){
        self.data = data
    }
}
