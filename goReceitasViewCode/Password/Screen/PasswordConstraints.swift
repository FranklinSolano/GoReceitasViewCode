//
//  PasswordConstraints.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//
import UIKit
import Foundation

extension PasswordView {
    
            func setUpConstraints(){
        NSLayoutConstraint.activate([
        
            self.backButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),
            self.backButton.heightAnchor.constraint(equalToConstant: 30),
            self.backButton .widthAnchor.constraint(equalToConstant: 30),
            
            self.labelReceitas.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.labelReceitas.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        
            self.labelGo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.labelGo.leadingAnchor.constraint(equalTo: self.labelReceitas.leadingAnchor,constant: -35),
            
            self.logoTop.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.logoTop.trailingAnchor.constraint(equalTo: self.labelReceitas.trailingAnchor,constant: 35),
            self.logoTop.heightAnchor.constraint(equalToConstant: 33),
            self.logoTop.widthAnchor.constraint(equalToConstant: 30),
            
            self.informarEmailLabel.topAnchor.constraint(equalTo: self.labelReceitas.bottomAnchor,constant: 100),
            self.informarEmailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.informarEmailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.textFieldEmail.topAnchor.constraint(equalTo: self.informarEmailLabel.bottomAnchor,constant: 15),
            self.textFieldEmail.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldEmail.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.buttonEnviar.topAnchor.constraint(equalTo: self.textFieldEmail.bottomAnchor,constant: 50),
            self.buttonEnviar.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.buttonEnviar.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            
            
         
            
            
            
            
            
        ])
    }
}
