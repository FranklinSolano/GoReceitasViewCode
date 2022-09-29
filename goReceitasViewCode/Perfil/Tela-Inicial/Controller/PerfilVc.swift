//
//  PerfilVc.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/14/22.
//

import UIKit

class PerfilVc: UIViewController {
    
    var perfilView: PerfilView?
    
    
    override func loadView() {
        self.perfilView = PerfilView()
        self.view = self.perfilView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.perfilView?.delegate(delegate: self)

    }
    

    
}
extension PerfilVc:PerfilViewProtocool{
 

    
    func actionMudarSenhaButton() {
        let vc:MudarSenhaVc = MudarSenhaVc()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func actionSairButton() {
        let vc:LoginVc = LoginVc()
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    func actionEditEmail() {
        if perfilView?.textFieldemail.isEnabled == true {
            perfilView?.textFieldemail.isEnabled = false
        } else {
            perfilView?.textFieldemail.isEnabled = true
        }
        
        
        
    }
    
   
    
}
