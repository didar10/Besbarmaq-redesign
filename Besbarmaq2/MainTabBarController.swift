//
//  MainTabBarController.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 22.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate{
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        setupViewControllers()
        tabBar.tintColor = Colors.orangeNew
        delegate = self
    }
    
    func setupViewControllers() {
        let first = templateNavController(rootViewController: ViewController(), image: #imageLiteral(resourceName: "home"), title: "Сегодня")
        let second = templateNavController(rootViewController: CooksVC(), image: #imageLiteral(resourceName: "recipe (1) 1"), title: "Повара")
        let third = templateNavController(rootViewController: ViewControllerThree(), image: #imageLiteral(resourceName: "calendar 1"), title: "Меню")
        let fourth = templateNavController(rootViewController: ViewControllerFour(), image: #imageLiteral(resourceName: "document 1"), title: "Заказы")
        let fifth = templateNavController(rootViewController: ProfileVC(), image: #imageLiteral(resourceName: "user 1"), title: "Я")
        
        viewControllers = [first, second, third, fourth, fifth]
        
    }

}

func templateNavController(rootViewController: UIViewController, image: UIImage, title: String) -> UINavigationController{
    let navController = UINavigationController(rootViewController: rootViewController)
    navController.tabBarItem.image = image
    navController.tabBarItem.title = title
    return navController
}
