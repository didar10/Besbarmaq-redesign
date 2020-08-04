//
//  ViewController.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 22.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class CooksVC: UIViewController {
    
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
        
    }()
    
    let imagesCellId = "imagesCellId"
    let albumsCellId = "albumsCellId"
    let bechefCellId = "bechefCellId"
    let headerId = "headerId"
    let buttonsNames = ["Лучшие повара", "Ближайшие повара", "Новые повара", "Повара на дом"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Повара"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        setupViews()
    }
    
    func setupViews() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ButtonsCell.self, forCellWithReuseIdentifier: imagesCellId)
        collectionView.register(TodayCell.self, forCellWithReuseIdentifier: albumsCellId)
        collectionView.register(BeChefCell.self, forCellWithReuseIdentifier: bechefCellId)
        collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
        collectionView.showsVerticalScrollIndicator = false
        
        view.addSubview(collectionView)
        collectionView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    
  
}





