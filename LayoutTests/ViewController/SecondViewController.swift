//
//  SecondViewController.swift
//  LayoutTests
//
//  Created by Matthias Ludwig on 25.01.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    // MARK: ViewLifeCycle
    
    override func loadView() {
        let contentView = SecondView(frame: .zero)
        view = contentView
    }
    
    var secondView: SecondView {
        return view as! SecondView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "NSLayoutAnchor"
    }

    // MARK: Layout
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        NSLayoutConstraint(item: secondView.firstNameLabel, attribute: .Top, relatedBy: .Equal
            , toItem: topLayoutGuide, attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
