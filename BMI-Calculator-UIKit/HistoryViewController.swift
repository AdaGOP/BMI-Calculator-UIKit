//
//  HistoryViewController.swift
//  BMI-Calculator-UIKit
//
//  Created by khoirunnisa' rizky noor fatimah on 15/04/23.
//

import UIKit
import SwiftUI

class HistoryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "History"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 1
        let vc = UIHostingController(rootView: HistoryView(bmiData: bmiDatas))
        let historyView = vc.view!
        historyView.translatesAutoresizingMaskIntoConstraints = false
        
        // 2
        // Add the view controller to the destination view controller.
        addChild(vc)
        view.addSubview(historyView)
        
        // 3
        // Create and activate the constraints for the swiftui's view.
        NSLayoutConstraint.activate([
            historyView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            historyView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            historyView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
        
        // 4
        // Notify the child view controller that the move is complete.
        vc.didMove(toParent: self)
    }
    
    
}
