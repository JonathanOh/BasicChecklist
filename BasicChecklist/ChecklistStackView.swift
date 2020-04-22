//
//  ChecklistStackView.swift
//  BasicChecklist
//
//  Created by Jonathan Oh on 4/22/20.
//  Copyright © 2020 Jonathan Oh. All rights reserved.
//

import UIKit

class ChecklistStackView: UIStackView {
    
    init(items: [String]) {
        super.init(frame: .zero)
        setupSelf()
        genereateChecklistItemViews(with: items)
    }
    
    func genereateChecklistItemViews(with items: [String]) {
        for item in items {
            let checklistItemView = ChecklistItemView(checklistText: item)
            addArrangedSubview(checklistItemView)
        }
    }
    
    func setupSelf() {
        // This allows us to setup view constraint via code instead of storyboard
        translatesAutoresizingMaskIntoConstraints = false
        
        axis = .vertical
        distribution = .fill
        spacing = 5
    }
    
    // Xcode genereated
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
