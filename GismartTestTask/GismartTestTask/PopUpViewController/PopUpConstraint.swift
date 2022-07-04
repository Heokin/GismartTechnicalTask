//
//  PopUpConstraint.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 30.06.22.
//

import Foundation
import UIKit

extension PopUpViewController {
    
    func setup() {
        view.backgroundColor = .clear
        view.addSubview(popUpView)
        popUpView.addSubview(popUpDownLabel)
        popUpView.addSubview(popUpUpperLabel)
        
        NSLayoutConstraint.activate([
            popUpView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            popUpView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            popUpView.widthAnchor.constraint(equalToConstant: 300),
            popUpView.heightAnchor.constraint(equalToConstant: 150),
            
            popUpUpperLabel.centerXAnchor.constraint(equalTo: popUpView.centerXAnchor),
            popUpUpperLabel.centerYAnchor.constraint(equalTo: popUpView.centerYAnchor, constant: -20),
            
            popUpDownLabel.topAnchor.constraint(equalTo: popUpUpperLabel.bottomAnchor, constant: 20),
            popUpDownLabel.centerXAnchor.constraint(equalTo: popUpView.centerXAnchor)
        ])
    }
}
