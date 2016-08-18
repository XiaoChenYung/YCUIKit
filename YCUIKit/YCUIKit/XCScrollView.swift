//
//  XCScrollView.swift
//  YCUIKit
//
//  Created by tm on 16/8/18.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class XCScrollView: UIScrollView,UIScrollViewDelegate {
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.frame = bounds
        addSubview(imageView)
        initScrollView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func initScrollView() {
        delegate = self
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        minimumZoomScale = 1
        maximumZoomScale = 5
    }
    
    private func resizeScrollView(max_map_ratio max_ratio: Int) {
        
        let size = imageView.image?.size
        
        minimumZoomScale = XCScreen.height() / (size?.height)!
        
        maximumZoomScale = max(minimumZoomScale, CGFloat(max_ratio))
        
        zoomScale = min(max(minimumZoomScale, zoomScale), maximumZoomScale)
        
        if zoomScale == 1.0 {
            zoomScale = minimumZoomScale
        }
        
        imageView.frame = CGRectMake(0, 0, imageView.image!.size.width * zoomScale, imageView.image!.size.height * zoomScale)
        
        contentSize = imageView.frame.size
        
        contentOffset = CGPoint(x: imageView.frame.width / 2 - XCScreen.width() / 2, y: imageView.frame.height / 2 - XCScreen.height() / 2)
    }
    
    //MARK: 图片缩放代理
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView
    }

}
