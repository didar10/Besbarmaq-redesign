//
//  ViewController.swift
//  Besbarmaq2
//
//  Created by Didar Bakhitzhanov on 22.07.2020.
//  Copyright © 2020 snowkids. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var txtDatePicker: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.placeholder = "Pick your data right here....."
        txt.font = UIFont.systemFont(ofSize: 15)
        txt.borderStyle = .roundedRect
        
        // Create date picker view
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .time
        txt.inputView = datePicker
        
        
        //add action to date picker
        
        datePicker.addTarget(self, action: #selector(self.valuechanged), for: .valueChanged)
        return txt
    }()
    
    //you can dismiss by using touch began event as well

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true) //Dismiss the date picker
    }
    
    @objc func valuechanged(sender: UIDatePicker){
        
        let timeFormat = DateFormatter()
        timeFormat.dateStyle = .none
        timeFormat.timeStyle = .short
        self.txtDatePicker.text = timeFormat.string(from: sender.date)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        self.view.addSubview(self.txtDatePicker)
        
        self.txtDatePicker.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant:  10).isActive = true
        self.txtDatePicker.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant:  -10).isActive = true
        
        self.txtDatePicker.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.txtDatePicker.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    
    }




