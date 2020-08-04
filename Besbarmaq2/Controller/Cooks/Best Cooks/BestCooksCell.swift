//
//  BestCooksCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 28.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class BestCooksCell: UITableViewCell {

    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
//        view.setCellShadow()
        view.layer.borderWidth = 1.0
        let yourColor : UIColor = UIColor( red: 0.9176, green: 0.9216, blue: 0.9294, alpha: 1.0)
        view.layer.masksToBounds = true
        view.layer.borderColor = yourColor.cgColor
        view.layer.cornerRadius = 8
        return view
    }()
        
    let pictureImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        
        return iv
    }()
        
    let chefNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
//        label.text = "Mister Chef"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let dishesLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
//        label.text = "Фирменные блюда: 14"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    let ordersLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
//        label.text = "Заказы: 345"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    let feedbackLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
//        label.text = "Отзыв: 136"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle = .default, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        
    }
    
        func setup(){
            addSubview(cellView)
            cellView.addSubview(pictureImageView)
            cellView.addSubview(chefNameLabel)
            cellView.addSubview(dishesLabel)
            cellView.addSubview(ordersLabel)
            cellView.addSubview(feedbackLabel)
            
            cellView.setAnchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 4, paddingRight: 8, width: 12, height: 100 )
            
            pictureImageView.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
            pictureImageView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
    
            chefNameLabel.setAnchor(top: topAnchor, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
//            chefNameLabel.centerYAnchor.constraint(equalTo: pictureImageView.centerYAnchor).isActive = true
            
            dishesLabel.setAnchor(top: chefNameLabel.bottomAnchor, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
            
            ordersLabel.setAnchor(top: dishesLabel.bottomAnchor, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
            
            feedbackLabel.setAnchor(top: ordersLabel.bottomAnchor, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20)
            
            

        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
