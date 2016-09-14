//
//  XCScreen.swift
//  SwiftDaoLan
//
//  Created by 杨晓晨 on 16/8/14.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class XCScreen: NSObject {
    class func height() -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    class func width() -> CGFloat {
        return UIScreen.main.bounds.size.width
    }
}
