//
//  MainButton.swift
//  Dreamimi
//
//  Created by Sergey Germanovich on 22/10/2018.
//  Copyright © 2018 MindTeam. All rights reserved.
//

import UIKit


class MainButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel?.font = .rb16
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        titleLabel?.font = .rb16
        backgroundColor = .red
    }
    
    override open var isHighlighted: Bool {
        didSet { backgroundColor = isHighlighted ? .tapRed : .red }
    }
}
