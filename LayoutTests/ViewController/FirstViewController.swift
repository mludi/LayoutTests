//
//  ViewController.swift
//  LayoutTests
//
//  Created by Matthias Ludwig on 22.01.16.
//  Copyright © 2016 Matthias Ludwig. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: ViewLifeCycle
    
    override func loadView() {
        let contentView = FirstView(frame: .zero)
        view = contentView
    }

    var firstView: FirstView {
        return view as! FirstView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = NSLocalizedString("NSLayoutcontraint", comment: "")

    }
    
    // MARK: Layout
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        NSLayoutConstraint(item: firstView.firstNameLabel, attribute: .Top, relatedBy: .Equal, toItem: topLayoutGuide, attribute: .Bottom, multiplier: 1.0, constant: 20.0).active = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

