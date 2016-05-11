//
//  XTActivityView.swift
//  Swift仿网易云音乐播放音乐动画
//
//  Created by zjwang on 5/11/16.
//  Copyright © 2016 夏天. All rights reserved.
//

import UIKit

class XTActivityView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
        /// 方块的个数
    var numberOfRect = 0;
        /// 方块的颜色
    var rectBackgroundColor: UIColor?
    var defaultSize: CGSize?
        /// 方块之间的间距
    var space: CGFloat = 0.0
    
    override init(frame: CGRect) {
        //
        super.init(frame: frame)
        self.createDefaultAttribute(frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createDefaultAttribute(frame: CGRect) -> Void {
        numberOfRect = 6;
        self.rectBackgroundColor = UIColor.blackColor()
        space = 1;
        defaultSize = frame.size
    }
    func addAnimateWithDelay(delay: Double) -> CAAnimation {
        let animation = CABasicAnimation.init(keyPath: "transform.rotation.x")
        animation.repeatCount = MAXFLOAT;
        animation.removedOnCompletion = true;
        animation.autoreverses = false;
        animation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear)
        animation.fromValue = NSNumber.init(float: 0)
        animation.toValue = NSNumber.init(double: M_PI)
        animation.duration = (Double)(numberOfRect) * 0.2;
        animation.beginTime = CACurrentMediaTime() + delay;
        return animation;
    }
    /**
     *  添加矩形
     */
    func addRect() -> Void {
        self.removeRect()
        self.hidden = false
        for  i in 0...numberOfRect {
        let x = (CGFloat)(i) * (5 + space)
        let rView = UIView.init(frame: CGRectMake(x, 0, 5, defaultSize!.height))
            rView.backgroundColor = rectBackgroundColor
            rView.layer.addAnimation(self.addAnimateWithDelay((Double)(i) * 0.2), forKey: "TBRotate")
        self.addSubview(rView)
        }
    }
    /**
     *  移除矩形
     */
    func removeRect() -> Void {
        if self.subviews.count > 0 {
            self.removeFromSuperview()
        }
        self.hidden = true
    }
    
    func startAnimation() {
        self.addRect()
    }
    func stopAnimation() {
        self.removeRect()
    }
}
