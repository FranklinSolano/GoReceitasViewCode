//
//  RegisterConstraints.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//
import UIKit
import Foundation

extension RegisterView {
            func setUpConstraints(){
        NSLayoutConstraint.activate([
        
            self.labelReceitas.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.labelReceitas.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.labelGo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.labelGo.leadingAnchor.constraint(equalTo: self.labelReceitas.leadingAnchor,constant: -35),
            
            self.imageTopo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.imageTopo.trailingAnchor.constraint(equalTo: self.labelReceitas.trailingAnchor,constant: 35),
            self.imageTopo.heightAnchor.constraint(equalToConstant: 33),
            self.imageTopo.widthAnchor.constraint(equalToConstant: 30),
            
            self.backButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 5),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),
            self.backButton.heightAnchor.constraint(equalToConstant: 30),
            self.backButton .widthAnchor.constraint(equalToConstant: 30),
            
            self.labelCadastro.topAnchor.constraint(equalTo: self.imageTopo.bottomAnchor,constant: 25),
            self.labelCadastro.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            
            self.labelNome.topAnchor.constraint(equalTo: self.labelCadastro.bottomAnchor,constant: 20),
            self.labelNome.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            
            self.textFieldNome.topAnchor.constraint(equalTo: self.labelNome.bottomAnchor,constant: 10),
            self.textFieldNome.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldNome.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.labelEmail.topAnchor.constraint(equalTo: self.textFieldNome.bottomAnchor,constant: 10),
            self.labelEmail.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            
            self.textFieldEmail.topAnchor.constraint(equalTo: self.labelEmail.bottomAnchor,constant: 10),
            self.textFieldEmail.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldEmail.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.labelSenha.topAnchor.constraint(equalTo: self.textFieldEmail.bottomAnchor,constant: 10),
            self.labelSenha.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            
            self.textFielSenha.topAnchor.constraint(equalTo: self.labelSenha.bottomAnchor,constant: 10),
            self.textFielSenha.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFielSenha.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.labelConfirmaSenha.topAnchor.constraint(equalTo: self.textFielSenha.bottomAnchor,constant: 10),
            self.labelConfirmaSenha.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            
            self.textFielConfirmarSenha.topAnchor.constraint(equalTo: self.labelConfirmaSenha.bottomAnchor,constant: 10),
            self.textFielConfirmarSenha.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFielConfirmarSenha.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.cadastrarButton.topAnchor.constraint(equalTo: self.textFielConfirmarSenha.bottomAnchor,constant: 35),
            self.cadastrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.cadastrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.backLogin.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -25),
            self.backLogin.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        
            
            self.imageLogo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.imageLogo.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.imageLogo.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            
        
            
            
        
            
        ])
    }
    
}
