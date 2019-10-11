//
//  IntroViewController.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 23/10/2018.
//  Copyright © 2018 MindTeam. All rights reserved.
//

import UIKit

final class IntroViewController: UIViewController {
    
    @IBOutlet weak var bigRobot: UIImageView!
    @IBAction func nextTapped(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "MainViewController")
        viewController.modalTransitionStyle = .crossDissolve
        show(viewController, sender: nil)
        // Инициализируем генератор
        let generator = UINotificationFeedbackGenerator()
        // Вызываем taptic feedback с типом success
        generator.notificationOccurred(.success)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigRobot.addParallax(withValue: 40)
    }
}
