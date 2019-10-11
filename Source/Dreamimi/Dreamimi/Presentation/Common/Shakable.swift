//
//  Shakable.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 23/10/2018.
//  Copyright © 2018 MindTeam. All rights reserved.
//

import UIKit

extension UIButton: Shakeable {}

protocol Shakeable { }

// we can constrain the shake method to only UIViews!
extension Shakeable where Self: UIView {
    
    // default shake implementation
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
