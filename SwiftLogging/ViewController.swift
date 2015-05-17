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
        super.viewDidLoad()
        LOG_METHOD()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        LOG_METHOD()
        LOG(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        LOG_METHOD()
        // Dispose of any resources that can be recreated.
    }


}

