//
//  PopupView.swift
//  HeaderPopupDemo
//
//  Created by Duc Anh on 5/13/19.
//  Copyright © 2019 Duc Anh. All rights reserved.
//

import UIKit

class PopupView: UIView {
    weak var selectedButton: Button?
    
    var isOpen: Bool = false {
        didSet {
            corverButton.alpha = isOpen ? 0.6 : 0
            UIView.animate(withDuration: 0.2) {
                self.layoutIfNeeded()
            }
            if !isOpen  {
                self.removeFromSuperview()
                selectedButton?.isSelected = false
            }
        }
        
    }
    
    @IBOutlet weak var corverButton: UIButton!
    @IBOutlet weak var neckView: UIView!
    
    func layoutWhenButtonClicked(_ button: Button) {
        isOpen = true
        neckView.frame = CGRect(x: button.frame.minX + 6, y: 0, width: button.frame.width, height: 20)
    }
    @IBAction func clickedCorverButton(_ sender: Any) {
        isOpen = false
    }
}
