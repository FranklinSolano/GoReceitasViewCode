//
//  Register.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit
import Firebase


class RegisterVc: UIViewController {

    var registerView: RegisterView?
    
    var auth:Auth?
    var alert:Alert?
    
    override func loadView() {
        self.registerView = RegisterView()
        self.view = self.registerView
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerView?.configTextFieldDelegate(delegate: self)
        self.registerView?.delegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = Alert(controller: self)
    }

}
extension RegisterVc:UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerView?.validaTextField()
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
extension RegisterVc:RegisterViewProtocool{
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionBackLogin() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCadastrarButton() {
        
        guard let register = self.registerView else{return}
        
        self.auth?.createUser(withEmail: register.getEmail(), password: register.getSenha(), completion: { (result, error) in
            if error != nil{
                self.alert?.getAlert(titulo: "Atenção", mensagem: "Erro ao cadastrar, verifique os dados e tente novamente")
            }else{
                self.alert?.getAlert(titulo: "Parabens", mensagem: "Usuario cadastrado com sucesso", completion: {
                    self.navigationController?.popViewController(animated: true)
                })
            }
        })
        
    }
    
    
    
    
}
