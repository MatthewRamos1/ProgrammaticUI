//
//  SettingsView.swift
//  ProgrammaticUI
//
//  Created by Matthew Ramos on 1/28/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class SettingsView: UIView {
    
    public lazy var pickerView: UIPickerView = {
        let pv = UIPickerView()
        return pv
    }() //lazy property initalizer

    override init(frame:CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupPickerViewConstraints()
    }
    
    private func setupPickerViewConstraints() {
        addSubview(pickerView)
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pickerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            pickerView.centerYAnchor.constraint(equalTo: centerYAnchor)
            
        ])
    }
}
