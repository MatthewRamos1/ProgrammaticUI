//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Matthew Ramos on 1/28/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainView = MainView()
    //if doing programmatic UI implement and setup the view
    //in loadView()
    //loadView() gets called before viewDidLoad() and sets up the initial view of the controller
    //do not call super when overriding loadView()
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        configureNavBar()
        
    }
    
    private func configureNavBar() {
        navigationItem.title = "Programmatic UI"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }

    @objc
    private func showSettings(_ sender: UIBarButtonItem) {
        let settingsVC = SettingsViewController()
        navigationController?.pushViewController(settingsVC, animated: true)
    }
    
    private func resetAppColor(_ sender: UIButton) {
        print("yooooo")
    }

}

