//
//  RegistrationUIs.swift
//  GoldenSwap
//
//  Created by Ehsan on 22/11/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class RegistrationUIs: UIView {
    
    let phoneNumberTextField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.placeholder = "  +31 1234567"
        
        return textField
    }()
    
    
    let submitButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(submitAction), for: .touchUpInside)
        
        return button
    }()
    
    
    @objc func submitAction() {
        // implementation in RegistrationViewController
    }
    
    
    func setupViews(view: UIView) {
        view.addSubview(phoneNumberTextField)
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            phoneNumberTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneNumberTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 50),
            phoneNumberTextField.widthAnchor.constraint(equalToConstant: 250),
            
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.heightAnchor.constraint(equalToConstant: 40),
            submitButton.widthAnchor.constraint(equalToConstant: 100),
            submitButton.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 40),
            
        ])
        
    }
    
}
