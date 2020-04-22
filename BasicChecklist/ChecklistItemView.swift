//
//  ChecklistItemView.swift
//  BasicChecklist
//
//  Created by Jonathan Oh on 4/22/20.
//  Copyright © 2020 Jonathan Oh. All rights reserved.
//

import UIKit

class ChecklistItemView: UIView {
    
    let circleView = CircleView()
    let checklistLabel = UILabel()
    
    init(checklistText: String) {
        checklistLabel.text = checklistText
        super.init(frame: .zero)
        addSubview(circleView)
        setupSelf()
        setupConstraints()
        setupTapGesture()
    }
    
    @objc func checkboxWasTapped() {
        circleView.toggleIsSelected()
    }
    
    func setupTapGesture() {
        // This will call the function checkboxWasTapped anytime a user taps on ChecklistItemView
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(checkboxWasTapped))
        addGestureRecognizer(tapGestureRecognizer)
    }
    
    func setupSelf() {
        layer.borderWidth = 2
        layer.borderColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 5
    }
    
    func setupConstraints() {
        // This allows us to setup view constraint via code instead of storyboard
        translatesAutoresizingMaskIntoConstraints = false
        
        // sets width of checkbox to be 70% of screen width and a height of 50
        widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.7).isActive = true
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // position the circleview within checkbox
        // centerY is vertical alignment
        circleView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        circleView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        
        addSubview(checklistLabel)
        checklistLabel.translatesAutoresizingMaskIntoConstraints = false
        checklistLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        checklistLabel.leftAnchor.constraint(equalTo: circleView.rightAnchor, constant: 30).isActive = true
    }
    
    // Xcode genereated
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
