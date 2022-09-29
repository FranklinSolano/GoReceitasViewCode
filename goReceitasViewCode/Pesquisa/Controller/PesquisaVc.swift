//
//  PesquisaVc.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/14/22.
//

import UIKit

class PesquisaVc: UIViewController {
    
    
    var pesquisaView: PesquisaView?
    
    
    override func loadView() {
        self.pesquisaView = PesquisaView()
        self.view = self.pesquisaView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

 

}
