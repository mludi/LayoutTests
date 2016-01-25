//
//  SecondView.swift
//  LayoutTests
//
//  Created by Matthias Ludwig on 25.01.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class SecondView: UIView {
    
    let firstNameLabel: UILabel
    let firstNameTextField: UITextField
    
    let secondNameLabel: UILabel
    let secondNameTextField: UITextField
    
    let registerButton: UIButton
    
    

    override init(frame: CGRect) {
        
        
        firstNameLabel = UILabel()
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.text = NSLocalizedString("First Name", comment: "")
        firstNameLabel.setContentHuggingPriority(251, forAxis: .Horizontal)
        
        firstNameTextField = UITextField()
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.borderStyle = .RoundedRect
        
        secondNameLabel = UILabel()
        secondNameLabel.translatesAutoresizingMaskIntoConstraints = false
        secondNameLabel.text = NSLocalizedString("Second Name", comment: "")
        
        secondNameTextField = UITextField()
        secondNameTextField.translatesAutoresizingMaskIntoConstraints = false
        secondNameTextField.borderStyle = .RoundedRect
        
        registerButton = UIButton(type: .System)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.backgroundColor = .lightGrayColor()
        registerButton.setTitle(NSLocalizedString("Register", comment: ""), forState: .Normal)
        
        super.init(frame: frame)
        
        addSubview(firstNameLabel)
        addSubview(firstNameTextField)
        addSubview(secondNameLabel)
        addSubview(secondNameTextField)
        addSubview(registerButton)
        
        let container = UILayoutGuide()
        addLayoutGuide(container)

        firstNameLabel.leadingAnchor.constraintEqualToAnchor(container.leadingAnchor).active = true
        
        firstNameTextField.firstBaselineAnchor.constraintEqualToAnchor(firstNameLabel.firstBaselineAnchor).active = true
        
        firstNameTextField.leadingAnchor.constraintEqualToAnchor(firstNameLabel.trailingAnchor, constant: 8.0).active = true
        firstNameTextField.trailingAnchor.constraintEqualToAnchor(container.trailingAnchor).active = true
        
        
        secondNameLabel.leadingAnchor.constraintEqualToAnchor(firstNameLabel.leadingAnchor).active = true
        secondNameLabel.trailingAnchor.constraintEqualToAnchor(firstNameLabel.trailingAnchor).active = true
        
        secondNameTextField.leadingAnchor.constraintEqualToAnchor(firstNameTextField.leadingAnchor).active = true
        secondNameTextField.trailingAnchor.constraintEqualToAnchor(firstNameTextField.trailingAnchor).active = true
        
        secondNameTextField.firstBaselineAnchor.constraintEqualToAnchor(secondNameLabel.firstBaselineAnchor).active = true
        secondNameTextField.topAnchor.constraintEqualToAnchor(firstNameTextField.bottomAnchor, constant: 8.0).active = true

        registerButton.leadingAnchor.constraintEqualToAnchor(container.leadingAnchor).active = true
        registerButton.trailingAnchor.constraintEqualToAnchor(container.trailingAnchor).active = true
        registerButton.topAnchor.constraintEqualToAnchor(secondNameTextField.bottomAnchor, constant: 8.0).active = true
        
        let margins = layoutMarginsGuide
        container.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        container.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        
        backgroundColor = .whiteColor()
    }
    

    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
