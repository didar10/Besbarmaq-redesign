//
//  CooksVC+DataSource+Delegate.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 26.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

extension CooksVC: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 1 {
            return 4
        }
        if section == 2{
            return 1
        }
        return 1
    }
    //MARK: - Collection View Cells
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imagesCellId, for: indexPath) as! ButtonsCell
            cell.buttonNameLabel.text = buttonsNames[indexPath.item]
            return cell
        }
        if indexPath.section == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: bechefCellId, for: indexPath) as! BeChefCell
            cell.beChefButton.addTarget(self, action: #selector(beChefButtonTapped(_:)), for: .touchUpInside)
            return cell
        }
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: albumsCellId, for: indexPath) as! TodayCell
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1 {
            return CGSize(width: (view.frame.width / 2) - 16, height: 80)
        }
        if indexPath.section == 2{
            return CGSize(width: view.frame.width, height: 200)
        }
        return CGSize(width: view.frame.width, height: 160)
    }
    
    //MARK: - Collection View Paddings
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 1{
            return UIEdgeInsets(top: 0, left: 8, bottom: 10, right: 8)
        }
        if section == 2{
            return UIEdgeInsets(top: 0, left: 8, bottom: 10, right: 8)
        }
        return UIEdgeInsets(top: 0, left: 0, bottom: 2, right: 0)
    }
    
    //MARK: - Collection View Header
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader {
            let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! HeaderCollectionReusableView
            if indexPath.section == 0{
                sectionHeader.titleLabel.font = UIFont.systemFont(ofSize: 15)
                               sectionHeader.titleLabel.text = "Популярные шефы что готовили на сегодня"
            }
            if indexPath.section == 1 {
                sectionHeader.titleLabel.font = UIFont.boldSystemFont(ofSize: 22)
                sectionHeader.titleLabel.text = "Наши повара"
            }
            if  indexPath.section == 2{
                sectionHeader.titleLabel.font = UIFont.boldSystemFont(ofSize: 22)
                sectionHeader.titleLabel.text = "Шанс для тебя"
            }
            return sectionHeader
        } else{
            return UICollectionReusableView()        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 35)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0{
            self.navigationController?.pushViewController(BestCooksVC(), animated: true)
        }
    }
    
    @objc func beChefButtonTapped(_ sender: UIButton){
//        let controller = ViewControllerThree()
//        self.present(UINavigationController(rootViewController: controller), animated: true, completion: nil)
        self.navigationController?.pushViewController(BeChefVC(), animated: true)
    }
}
