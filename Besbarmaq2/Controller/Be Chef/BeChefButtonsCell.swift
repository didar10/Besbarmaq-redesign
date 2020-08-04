//
//  BeChefCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 01.08.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class BeChefButtonsCell: UITableViewCell {

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
       
    override init(style: UITableViewCell.CellStyle = .default, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
       
    
    func setupViews(){
        
        addSubview(cellView)
        cellView.addSubview(titleLabel)

        cellView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 8, paddingBottom: 4, paddingRight: 8 )
                  
        titleLabel.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 0, height: 40)
//        titleLabel.centerYAnchor.constraint(equalTo:cellView.centerYAnchor).isActive = true
    
        let buttonNames = [["Шеф-повар","Пекарь","Кондитер"],["Фьюжн-Мастер","Повар выской кухни"],["Диетолог","Технолог еды","Кулинар"]]
    
        var groups = [UIStackView]()
    
        for i in buttonNames {
            let group = createButtons(named: i)
            let subStackView = UIStackView(arrangedSubviews: group)
            subStackView.axis = .horizontal
            subStackView.distribution = .fillProportionally
            subStackView.spacing = 8
            groups.append(subStackView)
        }
    
        let stackView = UIStackView(arrangedSubviews: groups)
            stackView.axis = .vertical
            stackView.distribution = .fillEqually
            stackView.spacing = 12
    
        cellView.addSubview(stackView)
    
        stackView.setAnchor(top: titleLabel.bottomAnchor, left: cellView.leftAnchor, bottom: nil, right: cellView.rightAnchor, paddingTop: 8, paddingLeft: 12, paddingBottom: 8, paddingRight: 12)
    
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = .init(top: 0, left: 5, bottom: 0, right: 5)
    
    
        }
    
        func createButtons(named: [String]) -> [UIButton]{
            return named.map { letter in
              let button = CustomSelectButton()
              button.translatesAutoresizingMaskIntoConstraints = false
        
                
                button.setTitle(letter, for: .normal)
              return button
            }
        }
    
    
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }

}
