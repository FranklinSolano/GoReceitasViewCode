//
//  MudarSenhaVc.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/15/22.
//

import UIKit

class MudarSenhaVc: UIViewController {
    
    
    var mudarSenhaView: MudarSenhaView?
    
    
    override func loadView() {
        self.mudarSenhaView = MudarSenhaView()
        self.view = self.mudarSenhaView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mudarSenhaView?.delegate(delegate: self)

      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.hidesBackButton = true
    }
    

    

}
extension MudarSenhaVc:MudarSenhaViewProtocool{
   
    func actionSalvarButton() {
        print("Salvar")
    }
    
    func actionCancelarButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
