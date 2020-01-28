//
//  MainView.swift
//  ProgrammaticUI
//
//  Created by Matthew Ramos on 1/28/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class MainView: UIView {

    
    let defaultMessage = "No default color set, please go to settings"
    //create a label
    public lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemYellow
        label.textAlignment = .center
        label.text = defaultMessage
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        return label
    }() // --- Creates a closure and calls simultaneously
    
    //create a button
    
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemYellow
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    //if this view is initialized programmatically, gets called
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }

    //if this view gets initialized from storyboard, this initializer gets called
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupMessageLabelConstraints()
        setupResetButtonConstraints()
    }
    
    private func setupMessageLabelConstraints() {
        addSubview(messageLabel)
        //set constraints for the messageLabel
        messageLabel.translatesAutoresizingMaskIntoConstraints = false // required to use autolayout
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            messageLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            messageLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 20)
            
        //set top anchor 20 points from safe area top
            //set padding at the leading and trailing edges of the MainView
            
    
        ])
    }
    
    private func setupResetButtonConstraints() {
        addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        //set constraints
        NSLayoutConstraint.activate([
        resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        resetButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 40)
        ])
    }
}
