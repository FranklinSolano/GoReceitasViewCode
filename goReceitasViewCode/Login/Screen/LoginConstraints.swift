//
//  LoginConstraints.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//
import UIKit
import Foundation

extension LoginView {
        func setUpContrainsts(){
        NSLayoutConstraint.activate([
            
            self.labelReceitas.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.labelReceitas.centerXAnchor.constraint(equalTo: self.centerXAnchor),

            self.labelGo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.labelGo.leadingAnchor.constraint(equalTo: self.labelReceitas.leadingAnchor,constant: -35),

            self.imageTopLogo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.imageTopLogo.trailingAnchor.constraint(equalTo: self.labelReceitas.trailingAnchor,constant: 35),
            self.imageTopLogo.heightAnchor.constraint(equalToConstant: 33),
            self.imageTopLogo.widthAnchor.constraint(equalToConstant: 30),
            
            
            self.labelEmail.topAnchor.constraint(equalTo: self.topAnchor,constant: 150),
            self.labelEmail.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            self.emailTextField.topAnchor.constraint(equalTo: self.labelEmail.bottomAnchor,constant: 10),
            self.emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.labelSEnha.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor,constant: 10),
            self.labelSEnha.leadingAnchor.constraint(equalTo: self.labelEmail.leadingAnchor),
            
            self.senhaTextField.topAnchor.constraint(equalTo: self.labelSEnha.bottomAnchor,constant: 10),
            self.senhaTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.senhaTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            
            
            
            
            self.esqueceuSenhaButton.topAnchor.constraint(equalTo: self.senhaTextField.bottomAnchor,constant: 2),
            self.esqueceuSenhaButton.leadingAnchor.constraint(equalTo: self.labelSEnha.leadingAnchor),
            
            self.acessarButton.topAnchor.constraint(equalTo: self.senhaTextField.bottomAnchor,constant: 55),
            self.acessarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.acessarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            self.acessarButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
                        
            self.labelOu.topAnchor.constraint(equalTo: self.acessarButton.bottomAnchor,constant: 85),
            self.labelOu.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.labelOu.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            
            self.riscoView.topAnchor.constraint(equalTo: self.acessarButton.bottomAnchor,constant: 93),
            self.riscoView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.riscoView.widthAnchor.constraint(equalToConstant: 134),
            self.riscoView.heightAnchor.constraint(equalToConstant: 1),
            
            self.riscoView2.topAnchor.constraint(equalTo: self.acessarButton.bottomAnchor,constant: 93),
            self.riscoView2.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            self.riscoView2.widthAnchor.constraint(equalToConstant: 134),
            self.riscoView2.heightAnchor.constraint(equalToConstant: 1),
            
            self.buttonGoogle.topAnchor.constraint(equalTo: self.labelOu.bottomAnchor,constant: 45),
            self.buttonGoogle.leadingAnchor.constraint(equalTo: self.acessarButton.leadingAnchor),
            self.buttonGoogle.trailingAnchor.constraint(equalTo: self.acessarButton.trailingAnchor),
             
            self.imageGoogle.centerYAnchor.constraint(equalTo: self.buttonGoogle.centerYAnchor),
            self.imageGoogle.leadingAnchor.constraint(equalTo: self.buttonGoogle.leadingAnchor,constant: 15),
            self.imageGoogle.heightAnchor.constraint(equalToConstant: 20),
            self.imageGoogle.widthAnchor.constraint(equalToConstant: 23),
            
            self.riscoView3.topAnchor.constraint(equalTo: self.imageGoogle.bottomAnchor,constant: 45),
            self.riscoView3.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
            self.riscoView3.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -30),
            self.riscoView3.widthAnchor.constraint(equalToConstant: 300),
            self.riscoView3.heightAnchor.constraint(equalToConstant: 1),
            
            self.cadastraButton.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -25),
            self.cadastraButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            
            self.imageLogo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.imageLogo.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.imageLogo.bottomAnchor.constraint(equalTo: self.bottomAnchor),

            
          
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
         
            
        
            
            
            
                                                        
        
        
        
        
        
        
        
        
        
        ])
    }
}
