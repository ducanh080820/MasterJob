//
//  WorkPlaceViewController.swift
//  MasterJob
//
//  Created by Duc Anh on 5/17/19.
//  Copyright © 2019 Duc Anh. All rights reserved.
//

import UIKit

class WorkPlaceViewController: UIViewController {

    
    @IBOutlet var headerButtons: [Button]!
    @IBOutlet weak var placeView: View!
    @IBOutlet weak var view2: View!
    @IBOutlet weak var placeButton: Button!
    @IBOutlet weak var workButton: Button!
    @IBOutlet weak var view3: View!
    @IBOutlet weak var button3: Button!
    
    @IBOutlet weak var popupView: PopupView!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clickedHeaderButton(sender: Button) {
        headerButtons.forEach { $0.isSelected = false }
        sender.isSelected = !sender.isSelected
        
        if placeButton.isSelected {
            view2.isHidden = true
            placeView.isHidden = false
            view3.isHidden = true
        }
        if workButton.isSelected {
            placeView.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
        }
        if button3.isSelected {
            view3.isHidden = false
            placeView.isHidden = true
            view2.isHidden = true
        }
        
        addPopupView()
        popupView.layoutWhenButtonClicked(sender)
    }
    
    private func addPopupView() {
        view.addSubview(popupView)
        popupView.fill(left: 0, top: nil, right: 0, bottom: -100)
        popupView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        
    }
}
