//
//  BestCooksVC.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 28.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class BestCooksVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    public let tableView: UITableView = {
        let tv = UITableView()
        tv.separatorStyle = .none
        tv.allowsSelection = false
        return tv
    }()
    
    let cooksCellId = "cooksCellId"
    
    let cooksArray = [Info(image: "chef1", chefName: "Mister Chef", dishes: "Фирменные блюда: 29", orders: "Заказы: 345",feedback: "Отзыв: 136"),
                      Info(image: "chef2", chefName: "Любитель вкусняшек", dishes: "Фирменные блюда: 14", orders: "Заказы: 198", feedback: "Отзыв: 56"),
                      Info(image: "chef3", chefName: "Настоящий туркмен", dishes: "Фирменные блюда: 29", orders: "Заказы: 345", feedback: "Отзыв: 136"),
                      Info(image: "chef4", chefName: "The Hot Chef", dishes: "Фирменные блюда: 14", orders: "Заказы: 198", feedback: "Отзыв: 56")
                      
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        
        navigationItem.title = "Лучшие повара"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(BestCooksCell.self, forCellReuseIdentifier: cooksCellId)
        
        view.addSubview(tableView)
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cooksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cooksCellId, for: indexPath) as! BestCooksCell
        cell.pictureImageView.image = UIImage(named: cooksArray[indexPath.item].image!)
        cell.chefNameLabel.text = cooksArray[indexPath.item].chefName
        cell.dishesLabel.text = cooksArray[indexPath.item].dishes
        cell.ordersLabel.text = cooksArray[indexPath.item].orders
        cell.feedbackLabel.text = cooksArray[indexPath.item].feedback
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }

}
