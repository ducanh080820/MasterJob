//
//  TabBarViewController.swift
//  ManToMan
//
//  Created by Duc Anh on 5/2/19.
//  Copyright © 2019 Thang Hoa. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    @IBOutlet var stackButton: UIStackView!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var jobButton: UIButton!
    @IBOutlet var arrButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.isEnabled = true
        tabBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.addSubview(stackButton)
        tabBar.bringSubviewToFront(stackButton)
        setApperanceStackView()
        chatButton.backgroundColor = UIColorFromRGB(rgbValue: 0xDE3A2B, alpha: 1)
    }
    
    func setApperanceStackView() {
        stackButton.backgroundColor = UIColor.red
        stackButton.translatesAutoresizingMaskIntoConstraints = false
        
        stackButton.frame = CGRect(x: 0, y: view.frame.height - tabBar.frame.height, width: tabBar.frame.width, height: tabBar.frame.height)
        stackButton.topAnchor.constraint(equalTo: tabBar.topAnchor).isActive = true
        stackButton.trailingAnchor.constraint(equalTo: tabBar.trailingAnchor, constant: 0).isActive = true
        stackButton.leadingAnchor.constraint(equalTo: tabBar.leadingAnchor, constant: 0).isActive = true
        stackButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    func UIColorFromRGB(rgbValue: UInt, alpha: CGFloat) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
    
    @IBAction func selected(_ sender: UIButton) {
        sender.isSelected = true
        chatButton.backgroundColor = chatButton.isSelected ? UIColorFromRGB(rgbValue: 0xDE3A2B, alpha: 1) : UIColor.red
        jobButton.backgroundColor = jobButton.isSelected ? UIColorFromRGB(rgbValue: 0xDE3A2B, alpha: 1) : UIColor.red
        if chatButton.isSelected {
            selectedIndex = 0
        } else {
            selectedIndex = 1
        }
        arrButton.forEach { (button) in
            button.isSelected = false
        }
        
    }
    
}
