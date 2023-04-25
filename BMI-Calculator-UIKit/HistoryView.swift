//
//  HistoryView.swift
//  BMI-Calculator-UIKit
//
//  Created by khoirunnisa' rizky noor fatimah on 15/04/23.
//

import SwiftUI

struct HistoryView: View {
    
    var bmiData: [BMIModel]
    
    var body: some View {
        NavigationView{
            ScrollView {
                ForEach(bmiData) { data in
                        HistoryListView(date: data.date, bmiValue: data.bmiValue, bmiStatus: data.bmiStatus, bmiColor: Color(data.bmiColor))
                        Divider()
                }
                .padding()
            }
            .scrollIndicators(.automatic)
            .navigationTitle("History")
        }

    }
}


