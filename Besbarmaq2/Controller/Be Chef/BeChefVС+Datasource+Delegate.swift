//
//  BeChefVС+Datasource+Delegate.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 01.08.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

extension BeChefVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: beChefCellId, for: indexPath) as! BeChefButtonsCell
            return cell
        }
        
        if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: textFieldCellId, for: indexPath) as! TextFieldCell
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: timePickerViewId, for: indexPath) as! SecondCell
        return cell
        
       
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 190
        }
        return 60
    }
    
}
