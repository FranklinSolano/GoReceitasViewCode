//
//  MudarSenhaConstraints.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//

import UIKit

extension MudarSenhaView{
    
            func setUpConstraints(){
        NSLayoutConstraint.activate([
        
    
            
            self.labelReceita.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.labelReceita.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.labelGo.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.labelGo.leadingAnchor.constraint(equalTo: self.labelReceita.leadingAnchor,constant: -35),
            
            self.imageLogoTop.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.imageLogoTop.trailingAnchor.constraint(equalTo: self.labelReceita.trailingAnchor,constant: 35),
            self.imageLogoTop.heightAnchor.constraint(equalToConstant: 33),
            self.imageLogoTop.widthAnchor.constraint(equalToConstant: 30),
            
            self.backButton.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            self.backButton.heightAnchor.constraint(equalToConstant: 30),
            self.backButton.widthAnchor.constraint(equalToConstant: 30),
            
            
            self.imageLogoPerfil.topAnchor.constraint(equalTo: self.labelReceita.bottomAnchor,constant: 50),
            self.imageLogoPerfil.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.imageLogoPerfil.heightAnchor.constraint(equalToConstant: 150),
            self.imageLogoPerfil.widthAnchor.constraint(equalToConstant: 150),
            
            
            self.textFieldSenhaAtual.topAnchor.constraint(equalTo: self.imageLogoPerfil.bottomAnchor,constant: 35),
            self.textFieldSenhaAtual.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldSenhaAtual.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.imageOlhoTx1.centerYAnchor.constraint(equalTo: self.textFieldSenhaAtual.centerYAnchor),
            self.imageOlhoTx1.trailingAnchor.constraint(equalTo: self.textFieldSenhaAtual.trailingAnchor,constant: -20),
            self.imageOlhoTx1.heightAnchor.constraint(equalToConstant: 25),
            self.imageOlhoTx1.widthAnchor.constraint(equalToConstant: 25),
            
            self.textFieldNovaSenha.topAnchor.constraint(equalTo: self.textFieldSenhaAtual.bottomAnchor,constant: 15),
            self.textFieldNovaSenha.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldNovaSenha.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.imageOlhoTx2.centerYAnchor.constraint(equalTo: self.textFieldNovaSenha.centerYAnchor),
            self.imageOlhoTx2.trailingAnchor.constraint(equalTo: self.textFieldNovaSenha.trailingAnchor,constant: -20),
            self.imageOlhoTx2.heightAnchor.constraint(equalToConstant: 25),
            self.imageOlhoTx2.widthAnchor.constraint(equalToConstant: 25),
            
            self.textFieldConfirmarSenha.topAnchor.constraint(equalTo: self.textFieldNovaSenha.bottomAnchor,constant: 15),
            self.textFieldConfirmarSenha.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldConfirmarSenha.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.imageOlhoTx3.centerYAnchor.constraint(equalTo: self.textFieldConfirmarSenha.centerYAnchor),
            self.imageOlhoTx3.trailingAnchor.constraint(equalTo: self.textFieldConfirmarSenha.trailingAnchor,constant: -20),
            self.imageOlhoTx3.heightAnchor.constraint(equalToConstant: 25),
            self.imageOlhoTx3.widthAnchor.constraint(equalToConstant: 25),
            
            self.salvarButton.topAnchor.constraint(equalTo: self.textFieldConfirmarSenha.bottomAnchor,constant: 35),
            self.salvarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.salvarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            self.salvarButton.heightAnchor.constraint(equalToConstant: 35),
            
            self.imageEditar.centerYAnchor.constraint(equalTo: self.salvarButton.centerYAnchor),
            self.imageEditar.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -47),
            
            self.cancelarButton.topAnchor.constraint(equalTo: self.salvarButton.bottomAnchor,constant: 20),
            self.cancelarButton.leadingAnchor.constraint(equalTo: self.salvarButton.leadingAnchor),
            self.cancelarButton.trailingAnchor.constraint(equalTo: self.salvarButton.trailingAnchor),
            self.cancelarButton.heightAnchor.constraint(equalToConstant: 35),
            
            
            
            
            
            
            
         
        
        
        ])
    }
}
