//
//  PerfilConstraints.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//

import UIKit

extension PerfilView {
    
        func setUpConstraints(){
        NSLayoutConstraint.activate([
        
    
            self.labelReceitas.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.labelReceitas.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.labelGo.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.labelGo.leadingAnchor.constraint(equalTo: self.labelReceitas.leadingAnchor,constant: -35),
            
            self.imageLogoTopo.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.imageLogoTopo.trailingAnchor.constraint(equalTo: self.labelReceitas.trailingAnchor,constant: 35),
            self.imageLogoTopo.heightAnchor.constraint(equalToConstant: 33),
            self.imageLogoTopo.widthAnchor.constraint(equalToConstant: 30),
            
            self.imageLogoPerfil.topAnchor.constraint(equalTo: self.labelReceitas.bottomAnchor,constant: 50),
            self.imageLogoPerfil.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.imageLogoPerfil.heightAnchor.constraint(equalToConstant: 150),
            self.imageLogoPerfil.widthAnchor.constraint(equalToConstant: 150),
            
            self.imageEditar1.topAnchor.constraint(equalTo: self.imageLogoPerfil.bottomAnchor,constant: -30),
            self.imageEditar1.trailingAnchor.constraint(equalTo: self.imageLogoPerfil.trailingAnchor),
            
            self.textFieldUsuario.topAnchor.constraint(equalTo: self.imageLogoPerfil.bottomAnchor,constant: 25),
            self.textFieldUsuario.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldUsuario.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            
            self.textFieldemail.topAnchor.constraint(equalTo: self.textFieldUsuario.bottomAnchor,constant: 15),
            self.textFieldemail.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.textFieldemail.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.imageEditar.centerYAnchor.constraint(equalTo: self.textFieldemail.centerYAnchor),
            self.imageEditar.trailingAnchor.constraint(equalTo: self.textFieldemail.trailingAnchor,constant: -15),
            
            
            self.imageFerramenta1.centerYAnchor.constraint(equalTo: self.alterarSenhaButton.centerYAnchor),
            self.imageFerramenta1.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 47),
            self.imageFerramenta1.heightAnchor.constraint(equalToConstant: 20),
            self.imageFerramenta1.widthAnchor.constraint(equalToConstant: 20),
            
            self.imageSeta1.centerYAnchor.constraint(equalTo: self.alterarSenhaButton.centerYAnchor),
            self.imageSeta1.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -47),
            self.imageSeta1.heightAnchor.constraint(equalToConstant: 20),
            self.imageSeta1.widthAnchor.constraint(equalToConstant: 20),
            
            
            self.alterarSenhaButton.topAnchor.constraint(equalTo: self.textFieldemail.bottomAnchor,constant: 30),
            self.alterarSenhaButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.alterarSenhaButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            self.alterarSenhaButton.heightAnchor.constraint(equalToConstant: 35),
            
            
            self.sairButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -50),
            self.sairButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.sairButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),

            self.imageSair.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -73),
            self.imageSair.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 47),
            self.imageSair.heightAnchor.constraint(equalToConstant: 20),
            self.imageSair.widthAnchor.constraint(equalToConstant: 20),
         
            
            
        
        
        ])
    }

}
