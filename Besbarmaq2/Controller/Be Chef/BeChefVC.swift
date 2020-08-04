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
        let tv = UITableView()
        tv.allowsSelection = false
        return tv
    }()
   
    let beChefCellId = "beChefCellId"
    let textFieldCellId = "textFieldCellId"
    let timePickerViewId = "timePickerViewId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Стать шеф-поваром"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.rowHeight = UITableView.automaticDimension
        
        setupTableView()
    }
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        tableView.register(BeChefButtonsCell.self, forCellReuseIdentifier: beChefCellId)
        tableView.register(TextFieldCell.self, forCellReuseIdentifier: textFieldCellId)
        tableView.register(SecondCell.self, forCellReuseIdentifier: timePickerViewId)
    }
    

    

}
