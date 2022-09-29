//
//  Password.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit
import Firebase

class PasswordVc: UIViewController {

    var passwordView: PasswordView?
    var auth:Auth?
    var alert: Alert?
    
    override func loadView() {
        self.passwordView = PasswordView()
        self.view = self.passwordView
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.passwordView?.configTextFieldDelegate(delegate: self)
        self.passwordView?.delegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = Alert(controller: self)

    }
    
}

extension PasswordVc:UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.passwordView?.validaTextField()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
extension PasswordVc:PasswordViewProtocool{
    
    
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionButtonEnviar() {
    
        
        guard let enviarSenha = self.passwordView else {return}
        
        self.auth?.sendPasswordReset(withEmail: enviarSenha.getEmail() )
        
        self.alert?.getAlert(titulo: "Atenção", mensagem: "E-mail enviado para redefinar a senha.", completion: {
            self.navigationController?.popViewController(animated: true)
        
        })
        

    }
    
    
}
