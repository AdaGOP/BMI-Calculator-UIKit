//
//  HistoryView.swift
//  BMI-Calculator-UIKit
//
//  Created by khoirunnisa' rizky noor fatimah on 15/04/23.
//

import SwiftUI

struct HistoryView: View {
    
    @EnvironmentObject var bmiData: BMIDatas
    
    //var bmiData: [BMIModel]
    
    var body: some View {
        NavigationView{
            ScrollView {
                ForEach(bmiData.data) { data in
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


