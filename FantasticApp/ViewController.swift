//
//  ViewController.swift
//  FantasticApp
//
//  Created by sj_W on 2016/12/17.
//  Copyright © 2016年 pingan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fanView: FantasticView?

    override func viewDidLoad() {
        super.viewDidLoad()
        fanView = FantasticView(frame: view.bounds)
        view.addSubview(fanView!)
    }

}

