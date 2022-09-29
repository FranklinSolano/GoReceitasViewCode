//
//  FavoritosVc.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/14/22.
//

import UIKit

class FavoritosVc: UIViewController {

    
    var favoritosView: FavoritosView?
    
    
    override func loadView() {
        self.favoritosView = FavoritosView()
        self.view = self.favoritosView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  

}
