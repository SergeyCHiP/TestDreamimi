//
//  MainViewController-World.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 23/10/2018.
//  Copyright © 2018 MindTeam. All rights reserved.
//

import UIKit


extension MainViewController {
    
    // MARK: - Public Method
    
    func createWorld() {
        needSomeSmashing = true
        cloudOne.isHidden = false
        cloudTwo.isHidden = false
        lightning.isHidden = false
        cloudOne.addParallax(withValue: -60)
        cloudTwo.addParallax(withValue: 40)
        flashButton.addParallax(withValue: -20)
    }
    
    func smashEverthing() {
        guard needSomeSmashing else { return }
        
        // Молния
        self.lightning.alpha = 1.0
        UIView.animate(withDuration: 1, animations: {
            self.lightning.alpha = 0.0
        })
        
        // Свет экрана
        let v = UIView(frame: view.bounds)
        v.backgroundColor = .white
        v.alpha = 1
        
        view.addSubview(v)
        UIView.animate(withDuration: 0.5, animations: {
            v.alpha = 0.0
        }, completion: {(finished:Bool) in
            v.removeFromSuperview()
        })
    }
}
