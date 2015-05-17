//
//  ViewController.swift
//  SwiftLogging
//
//  Created by Takeshi Kawai on 2015/05/17.
//  Copyright (c) 2015年 Takeshi Kawai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        LOG_METHOD()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        LOG_METHOD()
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        LOG_METHOD()
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

