//
//  ViewController.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 22.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    
    public let tableViewProfile: UITableView = {
        let tv = UITableView(frame: .zero, style: .grouped)
        tv.allowsSelection = true
        return tv
    }()
    
    let bandCellId = "bandCellId"

    let names = [
        "Мои Адреса", "Любимые повара", "Избранные", "Мои заказы", "Мои отзывы"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        tableViewProfile.delegate = self
        tableViewProfile.dataSource = self
        
        tableViewProfile.register(BandCell.self, forCellReuseIdentifier: bandCellId)
        
        view.addSubview(tableViewProfile)
        tableViewProfile.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
}

