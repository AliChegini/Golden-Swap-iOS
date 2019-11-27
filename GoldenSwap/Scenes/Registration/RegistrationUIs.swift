//
//  RegistrationUIs.swift
//  GoldenSwap
//
//  Created by Ehsan on 22/11/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit

class RegistrationUIs: UIView {
    
    let userNameTextField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.placeholder = "Username"
        textField.textAlignment = .center
        
        return textField
    }()
    
    
    let passwordTextField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.placeholder = "Password"
        textField.textAlignment = .center
        
        return textField
    }()
    
    
    let submitButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(submitAction), for: .touchUpInside)
        
        return button
    }()
    
    
    @objc func submitAction() {
        // implementation in RegistrationViewController
    }
    
    
    func setupViews(view: UIView) {
        view.addSubview(userNameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            userNameTextField.heightAnchor.constraint(equalToConstant: 50),
            userNameTextField.widthAnchor.constraint(equalToConstant: 250),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.widthAnchor.constraint(equalToConstant: 250),
            
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.heightAnchor.constraint(equalToConstant: 40),
            submitButton.widthAnchor.constraint(equalToConstant: 100),
            submitButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            
        ])
        
    }
    
}
