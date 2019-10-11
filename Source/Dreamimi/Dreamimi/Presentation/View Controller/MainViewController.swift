//
//  MainViewController.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 15/10/2018.
//  Copyright © 2018 MindTeam. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - IBOutlet
    
    @IBOutlet weak var cloudOne: UIImageView! { didSet { cloudOne.isHidden = true } }
    @IBOutlet weak var cloudTwo: UIImageView! { didSet { cloudTwo.isHidden = true } }
    @IBOutlet weak var lightning: UIImageView! { didSet { lightning.alpha = 0 } }
    @IBOutlet weak var flashButton: UIButton!
    
    
    // MARK: - Public Property
    
    var needSomeSmashing = false
    
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createWorld()
    }
    
    
    // MARK: - IBAction

    @IBAction func flashTapped(_ sender: Any) {
        // Инициализируем генератор
        let generator = UINotificationFeedbackGenerator()
        // Вызываем taptic feedback с типом success
        generator.notificationOccurred(.error)
        flashButton.shake()
        smashEverthing()
    }
    
}

