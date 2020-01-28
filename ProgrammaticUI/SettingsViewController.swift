//
//  SettingsViewController.swift
//  ProgrammaticUI
//
//  Created by Matthew Ramos on 1/28/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private var settingsView = SettingsView()
    
    private var colors = ["Red", "Green", "Orange", "Bubblegum", "Cyan", "Sky", "Yellow", "White", "Lime"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        //configure delegate and datasource of pickerview
        settingsView.pickerView.dataSource = self
        settingsView.pickerView.delegate = self
        
    }
    
    override func loadView() {
        view = settingsView
    }


}

extension SettingsViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        colors.count
    }
    
    
}

extension SettingsViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        colors[row]
    }
}
