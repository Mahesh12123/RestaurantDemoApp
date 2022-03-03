//
//  curveView.swift
//  RestaurantCartDemoApp
//
//  Created by Mahesh Mahara on 2/25/22.
//

import Foundation
import UIKit
extension UIView {
    //If you want only round corners
    func ViewCorners() {
        layer.cornerRadius = 10
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.masksToBounds = true
    }
  
}
extension UIButton {
    //If you want only round corners
    func btnCorners() {
        layer.cornerRadius = 20
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.masksToBounds = true
    }
  
}
