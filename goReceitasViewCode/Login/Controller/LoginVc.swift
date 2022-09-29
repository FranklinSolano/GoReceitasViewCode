//
//  ViewController.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit
import FirebaseCore
import GoogleSignIn
import FirebaseAuth


protocol LoginVcDelegate{
    func loginWithGoogle(_ configuration: GIDConfiguration)
        func loginSuccess()
        func loginError()
}

class LoginVc: UIViewController {
    
    var loginView:LoginView?
    var auth:Auth?
    var alert:Alert?
    var delegate:LoginVcDelegate?
    
    let google:LoginService = .init()
     
    override func loadView() {
        self.loginView = LoginView()
        self.view = self.loginView
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginView?.delegate(delegate: self)
        self.loginView?.configTextFieldDelegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = Alert(controller: self)
        delegate = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    func loginWithGoogle(){
        guard let config = google.getConfigureWithGoogle() else{return}
        
        delegate?.loginWithGoogle(config)
    }
    
    func handleGoogleSigIn(user: GIDGoogleUser?, error: Error?) { // tratar
            if error != nil {
                
                delegate?.loginError()
                return
            }
            guard
               let authentication = user?.authentication,
               let idToken = authentication.idToken
             else {
               return
             }

             let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                            accessToken: authentication.accessToken)

            google.toSaveOnFireBase(credential: credential)

            delegate?.loginSuccess()
        }

}

extension LoginVc:LoginViewProtocool{
    func actionLoginButton() {
        guard let login = self.loginView else{return}
        
        self.auth?.signIn(withEmail: login.getEmail(), password: login.getSenha(), completion: { (usuario, error) in
            
            if error != nil{
                self.alert?.getAlert(titulo: "Atenção", mensagem: "Dados incorretos, verifique e tente novamente.")
            }else{
                if usuario == nil{
                    self.alert?.getAlert(titulo: "Atenção", mensagem: "Dados incorretos, verifique e tente novamente.")
                }else{
                    let vc:TabBar = TabBar()
                    self.navigationController?.pushViewController(vc, animated: true)
                    
                }
            }
        })
        
    }
    
    func actionRegisterButton() {
        let vc:RegisterVc = RegisterVc()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionEsqueceuSenhaButton() {
        let vc:PasswordVc = PasswordVc()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionLoginGoogle() {
       
        loginWithGoogle()
        

        
    }
    
    
}


extension LoginVc: UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.loginView?.validaTextField()
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension LoginVc:LoginVcDelegate{
    func loginWithGoogle(_ configuration: GIDConfiguration) {
            // Start the sign in flow!
            GIDSignIn.sharedInstance.signIn(with: configuration, presenting: self) { [unowned self] user, error in
                self.handleGoogleSigIn(user: user, error: error)
            }
        }

        func loginSuccess() {
            print("Login Foi")
            let vc:TabBar = TabBar()
            self.navigationController?.pushViewController(vc, animated: true)
           
        }

        func loginError() {
            let alert = UIAlertController(
                title: "Aviso",
                message: "Login não pode ser efetuado, tente novamente mais tarde!",
                preferredStyle: .alert)

            let cancel = UIAlertAction(title: "OK", style: .cancel)

            alert.addAction(cancel)
            present(alert, animated: true)
        }
}

