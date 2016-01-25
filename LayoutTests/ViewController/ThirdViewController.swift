//
//  ThirdViewController.swift
//  LayoutTests
//
//  Created by Matthias Ludwig on 25.01.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    // MARK: ViewLifeCycle
    
    override func loadView() {
        let contentView = ThirdView(frame: .zero)
        view = contentView
    }
    
    var thirdView: ThirdView {
        return view as! ThirdView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = NSLocalizedString("Visual Format Language", comment: "")

    }
    
    // MARK: Layout
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        NSLayoutConstraint(item: thirdView.firstNameLabel, attribute: .Top, relatedBy: .Equal
            , toItem: topLayoutGuide, attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
