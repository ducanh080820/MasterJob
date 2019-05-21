//
//  Button.swift
//  HeaderPopupDemo
//
//  Created by Duc Anh on 5/13/19.
//  Copyright © 2019 Duc Anh. All rights reserved.
//

import UIKit
@IBDesignable
class Button: UIButton {
    
    override var isSelected: Bool {
        didSet {
            backgroundColor = isSelected ? UIColor.white : UIColor.clear
            titleLabel?.textColor = isSelected ? UIColor.blue : UIColor.white
        }
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 10, height: 10))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isSelected = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isSelected = false
    }
    
}
