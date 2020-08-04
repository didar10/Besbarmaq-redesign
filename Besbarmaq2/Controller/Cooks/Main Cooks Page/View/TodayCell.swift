//
//  AlbumCell.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 26.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
// AlbumCell

import UIKit

class TodayCell: UICollectionViewCell {
    
        let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 30
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
    }()
    
    let cellId = "cellId"
    
    let foodsArray = [FoodsItem(image: "kuirdak", authorsName: "nurlybaeva",    foodName:"Еда"),
                        FoodsItem(image: "kuirdak", authorsName: "nurlybaeva", foodName:"Куырдак"),
                         FoodsItem(image: "kuirdak", authorsName: "nurlybaeva", foodName:"Куырдак"),
                         FoodsItem(image: "kuirdak", authorsName: "nurlybaeva", foodName:"Куырдак"),
                         FoodsItem(image: "kuirdak", authorsName: "nurlybaeva", foodName:"Куырдак")]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup(){
        addSubview(collectionView)
        
        collectionView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(FoodsCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.showsHorizontalScrollIndicator = false
    }
    
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    
}
