//
//  ViewController.swift
//  Swift仿网易云音乐播放音乐动画
//
//  Created by zjwang on 5/11/16.
//  Copyright © 2016 夏天. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        let xt = XTActivityView.init(frame: CGRectMake(0, 10, 80, 15))
        xt.startAnimation()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: xt)
        xt.performSelector(Selector("stopAnimation"), withObject: nil, afterDelay: 5)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

