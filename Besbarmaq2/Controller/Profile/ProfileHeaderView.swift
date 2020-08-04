//
//  ProfileHeaderView.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 24.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
//    let cellView: UIView = {
//        let view = UIView()
//        view.backgroundColor = UIColor.white
//        return view
//    }()
        
    let pictureImageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "placeholder_profile"))
        iv.contentMode = .scaleAspectFit
        return iv
    }()
        
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Арайлым Асенова"
    //  label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        heightAnchor.constraint(equalToConstant: 85).isActive = true
        setup()
    }
        
        func setup(){
    //        backgroundColor = UIColor.grayTwo
            
//            addSubview(cellView)
            addSubview(pictureImageView)
            addSubview(titleLabel)
            
            
            
//            cellView.setAnchor(top: safeBottomAnchor, left: leftAnchor, bottom: safeBottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 8 )
            
            pictureImageView.setAnchor(top: nil, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 23, paddingBottom: 0, paddingRight: 0, width: 78, height: 78)
            pictureImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    
            titleLabel.setAnchor(top: nil, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 40)
            titleLabel.centerYAnchor.constraint(equalTo: pictureImageView.centerYAnchor).isActive = true
            

   
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

}
