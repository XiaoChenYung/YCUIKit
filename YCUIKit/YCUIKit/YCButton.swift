//
//  YCButton.swift
//  YCUIKit
//
//  Created by tm on 16/8/18.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class YCButton: UIButton {
    
    /**
     初始化
     
     - parameter frame:       <#frame description#>
     - parameter isAnimation: <#isAnimation description#>
     
     - returns: <#return value description#>
     */
    
    init(frame: CGRect,isAnimation: Bool) {
        super.init(frame: frame)
        self.isAnimation = isAnimation
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if isAnimation {
            addKeyAnimation()
        }
    }
    
    override func addTarget(target: AnyObject?, action: Selector, forControlEvents controlEvents: UIControlEvents) {

        super.addTarget(target, action: action, forControlEvents: controlEvents)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addKeyAnimation() {
        let layerAn = CAKeyframeAnimation(keyPath: "transform.scale")
        layerAn.values = [1,0.9,0.8,0.9,1,1.1,1.2,1.1,1]
        layerAn.duration = 0.5
        layerAn.repeatCount = 1
        layerAn.removedOnCompletion = true
        layer.addAnimation(layerAn, forKey: nil)
    }
    //MARK: 变量
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var isAnimation: Bool = false
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }

}
