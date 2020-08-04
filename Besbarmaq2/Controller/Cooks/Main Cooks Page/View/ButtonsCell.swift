//
//  ImagesCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 26.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
// ImagesCell

import UIKit

class ButtonsCell: UICollectionViewCell {
    
     let buttonNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 8
        let orangeTwo : UIColor = UIColor( red: 1, green: 0.475, blue:0.188, alpha: 1 )
        layer.masksToBounds = true
        layer.borderColor = orangeTwo.cgColor
        layer.borderWidth = 1.0
        setup()
    }
    

    func setup(){
        addSubview(buttonNameLabel)
        
        buttonNameLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
