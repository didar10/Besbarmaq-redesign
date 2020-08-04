//
//  BeChefCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 27.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class BeChefCell: UICollectionViewCell {
    
    let chanceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textAlignment = .left
        label.text = " Есть интерес к готовке? \n Люди становятся счастливее, когда \n пробуют твою еду? \n Тогда попробуй сделать мир чуточку лучше со \n своей готовкой!"
        label.numberOfLines = 0
        label.textColor = .gray
        return label
    }()
    
    let beChefButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Colors.orangeNew
        button.layer.cornerRadius = 12
        button.setTitle("Хочу быть шеф-поваром", for: .normal)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    

    func setup(){

        addSubview(chanceLabel)
        addSubview(beChefButton)
//        addActionToBottomButton()
        
        chanceLabel.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: -90, paddingLeft: 13, paddingBottom: 0, paddingRight: 0)
        beChefButton.setAnchor(top: chanceLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: -60, paddingLeft: 12, paddingBottom: 2, paddingRight: 12, width: 342, height: 40)
        
    }
    
//    func addActionToBottomButton() {
//        beChefButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
//    }
//
//
//    @objc func bottomButtonTapped() {
//         self.navigationController?.pushViewController(ViewController(), animated: true)
//    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

