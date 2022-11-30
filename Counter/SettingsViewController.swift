//
//  SettingsViewController.swift
//  Counter
//
//  Created by Леонид Турко on 29.11.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    //  MARK: - IB Outlets
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    
    //  MARK: - Private Properties
    private var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup(countLabel)
        setup(plusButton)
    }

   //  MARK: - IB Actions
    @IBAction func plusButtonTapped() {
        number += 1
        countLabel.text = "Значение счетчика:\n\(number)"
    }
}

extension SettingsViewController {
    //  MARK: -  Private Methods
    private func setup(_ label: UILabel) {
        label.font = .boldSystemFont(ofSize: 40)
        label.text = "Значение счетчика:\n\(number)"
        label.layer.borderColor = UIColor.blue.cgColor
        label.layer.borderWidth = 2
        label.textAlignment = .center
        label.layer.cornerRadius = 16
    }
    
    private func setup(_ button: UIButton) {
        button.layer.cornerRadius = 16
        button.setTitle("Plus one", for: .normal)
    }
}
