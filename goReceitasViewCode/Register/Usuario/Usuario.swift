//
//  Usuario.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/20/22.
//

import UIKit

class Usuario: NSObject {
    var nome:UITextField
    var email:UITextField
    var senha:UITextField
    var confirmarSenha:UITextField
    
    init(nome: UITextField, email: UITextField, senha: UITextField, confirmarSenha: UITextField) {
        self.nome = nome
        self.email = email
        self.senha = senha
        self.confirmarSenha = confirmarSenha
    }
}
