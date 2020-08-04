//
//  TextFieldCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 02.08.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class TextFieldCell: UITableViewCell {

    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
           
           
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Ваше направление"
            return label
        }()
    
    let textField: UITextField = {
        let field = UITextField()
        field.placeholder = "Пишите сюда"
        return field
    }()
           
    override init(style: UITableViewCell.CellStyle = .default, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
            
        setupViews()
    }
           
        
    func setupViews(){
            
        addSubview(cellView)
        cellView.addSubview(titleLabel)
        cellView.addSubview(textField)

        cellView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 4, paddingRight: 8 )
                      
        titleLabel.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 40)
        
        titleLabel.centerYAnchor.constraint(equalTo:cellView.centerYAnchor).isActive = true
        
        textField.setAnchor(top: nil, left: titleLabel.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight:0, width: 210, height: 50)
        textField.centerYAnchor.constraint(equalTo:cellView.centerYAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
