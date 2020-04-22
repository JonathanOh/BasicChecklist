//
//  MainViewController.swift
//  BasicChecklist
//
//  Created by Jonathan Oh on 4/22/20.
//  Copyright © 2020 Jonathan Oh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let checklistItems: [String] = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5", "Task 6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupSubviews()
    }
    
    func setupSubviews() {
        let checklistStackView = ChecklistStackView(items: checklistItems)
        view.addSubview(checklistStackView)
        
        // Center the whole checklist vertically and horizontally within view
        checklistStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checklistStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
