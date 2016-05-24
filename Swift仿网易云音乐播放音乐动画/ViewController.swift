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
        let xt = XTActivityView.init(frame: CGRectMake(110, 130, 40, 15))
        // 个数
        xt.numberOfRect = 4;
        // 颜色
        xt.rectBackgroundColor = UIColor.orangeColor()
        // 间距
        xt.space = 2;
        xt.startAnimation()
//        xt.stopAnimation()
        
        self.view.addSubview(xt)

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

