//
//  CircleView.swift
//  BasicChecklist
//
//  Created by Jonathan Oh on 4/22/20.
//  Copyright © 2020 Jonathan Oh. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    static let width: CGFloat = 20
    private var isSelected: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupStyling()
        setupConstraints()
        setupSelf()
    }
    
    func setupSelf() {
        isUserInteractionEnabled = false
    }
    
    func setupConstraints() {
        // This allows us to setup view constraint via code instead of storyboard
        translatesAutoresizingMaskIntoConstraints = false
        
        // sets width and height of CircleView to be 20x20
        widthAnchor.constraint(equalToConstant: CircleView.width).isActive = true
        heightAnchor.constraint(equalToConstant: CircleView.width).isActive = true
    }
    
    func setupStyling() {
        // Makes the view circular
        layer.cornerRadius = CircleView.width / 2
        // Border styling
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 1
    }
    
    func toggleIsSelected() {
        isSelected = !isSelected
        if isSelected {
            backgroundColor = UIColor.darkGray
        } else {
            backgroundColor = UIColor.white
        }
    }
    
    // Xcode genereated
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
