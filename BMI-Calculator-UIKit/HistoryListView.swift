//
//  HistoryListView.swift
//  BMI-Calculator-UIKit
//
//  Created by khoirunnisa' rizky noor fatimah on 15/04/23.
//

import SwiftUI

struct HistoryListView: View {
    @State var date: Date
    @State var bmiValue: Float
    @State var bmiStatus: String
    @State var bmiColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(date.formatted(date: .abbreviated, time: .shortened))").foregroundColor(.gray)
            HStack{
                Text(String(format: "%.2f", bmiValue)).font(.largeTitle).fontWeight(.bold)
                Spacer()
                Text("\(bmiStatus)")
                    .foregroundColor(bmiColor)
            }
        }
    }
}

