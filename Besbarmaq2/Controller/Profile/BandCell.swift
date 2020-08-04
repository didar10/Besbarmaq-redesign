//
//  BandCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 24.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class BandCell: UITableViewCell{
    
    let cellView: UIView = {
        let view = UIView()
//        view.backgroundColor = UIColor.white
//        view.setCellShadow()
        return view
    }()
    
//    let pictureImageView: UIImageView = {
//        let iv = UIImageView()
//        iv.contentMode = .scaleAspectFit
//        iv.backgroundColor = .red
//        return iv
//    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
//        label.textColor = .darkGray
//        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle = .default, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    func setup(){
//        backgroundColor = UIColor.grayTwo
        
        addSubview(cellView)
//        cellView.addSubview(pictureImageView)
        cellView.addSubview(titleLabel)
        
        cellView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 4, paddingRight: 8 )
        
//        pictureImageView.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
//        pictureImageView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
//
//        titleLabel.setAnchor(top: nil, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 40)
//        titleLabel.centerYAnchor.constraint(equalTo: pictureImageView.centerYAnchor).isActive = true
        

        
        titleLabel.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 40)
        titleLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

