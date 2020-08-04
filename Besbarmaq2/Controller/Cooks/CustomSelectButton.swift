//
//  CustomSelectButton.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 30.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class CustomSelectButton: UIButton {

    var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        layer.borderWidth = 0.8
        layer.borderColor = Colors.orangeNew.cgColor
        layer.cornerRadius = 5
        
        setTitleColor(Colors.orangeNew, for: .normal)
        addTarget(self, action: #selector(CustomSelectButton.buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    
    func activateButton(bool: Bool) {
        
        isOn = bool
        
        let color = bool ? Colors.orangeNew : .clear
//        let title = bool ? "Following" : "Follow"
        let titleColor = bool ? .white : Colors.orangeNew
        
//        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }

}
