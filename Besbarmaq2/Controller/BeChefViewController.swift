//
//  BeChefViewController.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 30.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class BeChefVC: UIViewController {
    
    public let tableView: UITableView = {
//        let tv = UITableView(frame: .zero, style: .plain)
        let tv = UITableView()
        tv.allowsSelection = false
//        tv.separatorStyle = .singleLine
        return tv
    }()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Стать шеф-поваром"
        navigationController?.navigationBar.prefersLargeTitles = true
        
//        makeButtonsGroup()
    }
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
//    func makeButtonsGroup(){
//
//        let buttonNames = [["Шеф-повар","Пекарь","Кондитер"],["Фьюжн-Мастер","Повар выской кухни"],["Диетолог","Технолог еды","Кулинар"]]
//
//        var groups = [UIStackView]()
//
//        for i in buttonNames {
//          let group = createButtons(named: i)
//          let subStackView = UIStackView(arrangedSubviews: group)
//          subStackView.axis = .horizontal
//          subStackView.distribution = .fillProportionally
//          subStackView.spacing = 8
//          groups.append(subStackView)
//        }
//
//        let stackView = UIStackView(arrangedSubviews: groups)
//        stackView.axis = .vertical
//        stackView.distribution = .fillEqually
//        stackView.spacing = 12
//
//        view.addSubview(stackView)
//
//        stackView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 8, paddingLeft: 12, paddingBottom: 8, paddingRight: 12)
//
//        stackView.isLayoutMarginsRelativeArrangement = true
//        stackView.layoutMargins = .init(top: 0, left: 5, bottom: 0, right: 5)
//
//
//    }
//
//    func createButtons(named: [String]) -> [UIButton]{
//        return named.map { letter in
//          let button = CustomSelectButton()
//          button.translatesAutoresizingMaskIntoConstraints = false
//          button.setTitle(letter, for: .normal)
//          return button
//        }
//    }

    

}
