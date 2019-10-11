//
//  ParallaxMotion.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 23/10/2018.
//  Copyright © 2018 MindTeam. All rights reserved.
//

import UIKit

extension UIView {
    
    func addParallax(withValue value: Int) {
        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -value
        horizontal.maximumRelativeValue = value
        
        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -value
        vertical.maximumRelativeValue = value
        
        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        addMotionEffect(group)
    }
}
