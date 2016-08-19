//
//  XCView-UIViewEx.swift
//  YCUIKit
//
//  Created by tm on 16/8/19.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit
extension UIView {
    func x() -> CGFloat {
        return frame.origin.x
    }
    
    func y() -> CGFloat {
        return frame.origin.y
    }
    
    func width() -> CGFloat {
        return bounds.size.width
    }
    
    func height() -> CGFloat {
        return bounds.size.height
    }
}