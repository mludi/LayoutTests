//
//  FirstView.swift
//  LayoutTests
//
//  Created by Matthias Ludwig on 22.01.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class FirstView: UIView {

    let firstNameLabel: UILabel
    let firstNameTextField: UITextField
    
    let secondNameLabel: UILabel
    let secondNameTextField: UITextField
    
    let emailLabel: UILabel
    let emailTextField: UITextField
    
    let registerButton: UIButton
    
    override init(frame: CGRect) {
        
        
        firstNameLabel = UILabel()
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameLabel.text = NSLocalizedString("First Name", comment: "")
        
        
        firstNameTextField = UITextField()
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.borderStyle = .RoundedRect
        
        
        secondNameLabel = UILabel()
        secondNameLabel.translatesAutoresizingMaskIntoConstraints = false
        secondNameLabel.text = NSLocalizedString("Second Name", comment: "")
        
        
        secondNameTextField = UITextField()
        secondNameTextField.translatesAutoresizingMaskIntoConstraints = false
        secondNameTextField.borderStyle = .RoundedRect
        
        emailLabel = UILabel()
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = NSLocalizedString("Email", comment: "")
        
        emailTextField = UITextField()
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.borderStyle = .RoundedRect
        
        registerButton = UIButton(type: .System)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.backgroundColor = .lightGrayColor()
        registerButton.setTitle(NSLocalizedString("Register", comment: ""), forState: .Normal)
        
        super.init(frame: frame)
        
        addSubview(firstNameLabel)
        addSubview(firstNameTextField)
        addSubview(secondNameLabel)
        addSubview(secondNameTextField)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(registerButton)
        
        NSLayoutConstraint(item: firstNameLabel, attribute: .Leading, relatedBy: .Equal, toItem: self, attribute: .LeadingMargin, multiplier: 1.0, constant: 0.0).active = true
        NSLayoutConstraint(item: self, attribute: .TrailingMargin, relatedBy: .Equal, toItem: firstNameTextField, attribute: .Trailing, multiplier: 1.0, constant: 0.0).active = true
        NSLayoutConstraint(item: firstNameTextField, attribute: .Baseline, relatedBy: .Equal, toItem: firstNameLabel, attribute: .Baseline, multiplier: 1.0, constant: 0.0).active = true
        
        NSLayoutConstraint(item: firstNameTextField, attribute: .Leading, relatedBy: .Equal, toItem: firstNameLabel, attribute: .Trailing, multiplier: 1.0, constant: 8.0).active = true

        NSLayoutConstraint(item: secondNameLabel, attribute: .Leading, relatedBy: .Equal, toItem: firstNameLabel, attribute: .Leading, multiplier: 1.0, constant: 0.0).active = true
        NSLayoutConstraint(item: secondNameLabel, attribute: .Trailing, relatedBy: .Equal, toItem: firstNameLabel, attribute: .Trailing, multiplier: 1.0, constant: 0.0).active = true
        
        NSLayoutConstraint(item: secondNameTextField, attribute: .Baseline, relatedBy: .Equal, toItem: secondNameLabel, attribute: .Baseline, multiplier: 1.0, constant: 0.0).active = true
        
        NSLayoutConstraint(item: secondNameTextField, attribute: .Leading, relatedBy: .Equal, toItem: secondNameLabel, attribute: .Trailing, multiplier: 1.0, constant: 8.0).active = true
        NSLayoutConstraint(item: secondNameTextField, attribute: .Trailing, relatedBy: .Equal, toItem: firstNameTextField, attribute: .Trailing, multiplier: 1.0, constant: 0.0).active = true
        
        
        NSLayoutConstraint(item: secondNameTextField, attribute: .Top, relatedBy: .Equal, toItem: firstNameTextField, attribute: .Bottom, multiplier: 1.0, constant: 8.0).active = true
        
        NSLayoutConstraint(item: registerButton, attribute: .Leading, relatedBy: .Equal, toItem: secondNameLabel, attribute: .Leading, multiplier: 1.0, constant: 0.0).active = true
        NSLayoutConstraint(item: registerButton, attribute: .Trailing, relatedBy: .Equal, toItem: secondNameTextField, attribute: .Trailing, multiplier: 1.0, constant: 0.0).active = true
        
        NSLayoutConstraint(item: registerButton, attribute: .Top, relatedBy: .Equal, toItem: secondNameTextField, attribute: .Bottom, multiplier: 1.0, constant: 8.0).active = true
        
        backgroundColor = .whiteColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
