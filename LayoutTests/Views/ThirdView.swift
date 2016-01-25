//
//  ThirdView.swift
//  LayoutTests
//
//  Created by Matthias Ludwig on 25.01.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class ThirdView: UIView {
    
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
        
        backgroundColor = .whiteColor()
        
        let views = [
            "firstNameLabel": firstNameLabel, "firstNameTextField": firstNameTextField,
            "secondNameLabel": secondNameLabel, "secondNameTextField": secondNameTextField,
            "registerButton": registerButton
        ]
        
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-[firstNameLabel]-[firstNameTextField]-|", options: .AlignAllBaseline, metrics: nil, views: views))

        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-[secondNameLabel]-[secondNameTextField]-|", options: .AlignAllBaseline, metrics: nil, views: views))
        
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[firstNameTextField]-[secondNameTextField]", options: [.AlignAllLeading, .AlignAllTrailing], metrics: nil, views: views))
        
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|-[registerButton]-|", options: [], metrics: nil, views: views))
        
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[secondNameTextField]-[registerButton]", options: [], metrics: nil, views: views))
        
    }
    
    required  init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
