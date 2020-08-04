//
//  IconsCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 26.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
// IconsCell

import UIKit

class FoodsCell: UICollectionViewCell{
    
    var food: FoodsItem? {
        didSet{
            guard let foodImage = food?.image else { return }
            guard let authorName = food?.authorsName else { return }
            guard let foodName = food?.foodName else { return }
                       
            imageView.image = UIImage(named: foodImage)
            authorLabel.text = authorName
            foodLabel.text = foodName
        }
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()
    
    let foodLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
      
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        layer.cornerRadius = 8
        let yourColor : UIColor = UIColor( red: 0.9176, green: 0.9216, blue: 0.9294, alpha: 1.0)
        layer.masksToBounds = true
        layer.borderColor = yourColor.cgColor
        layer.borderWidth = 1.0
    }
    
    func setup() {
        addSubview(imageView)
        addSubview(authorLabel)
        addSubview(foodLabel)
        imageView.setAnchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        authorLabel.setAnchor(top: imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 2, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        foodLabel.setAnchor(top: authorLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 10, paddingBottom: -5, paddingRight: 0)
    }
      
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
      
  }
