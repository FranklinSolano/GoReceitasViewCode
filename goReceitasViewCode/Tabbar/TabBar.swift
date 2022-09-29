//
//  Tabbar.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/14/22.
//

import UIKit
import CoreImage

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        }
   
    
    private func setupTabBarController(){
        
        let home = HomeVc()
        let favoritos = FavoritosVc()
        let pesquisa = PesquisaVc()
        let perfil = PerfilVc()
        
        setViewControllers([home,favoritos,pesquisa,perfil], animated: false)
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor(red: 166/255, green: 0/255, blue: 255/255, alpha: 1)
        tabBar.isHidden = false
      
        guard let itens = tabBar.items else{return}
        
        itens[0].title = "Home"
        itens[0].image = UIImage(named:"home")
        
        itens[1].title = "Favoritos"
        itens[1].image = UIImage(named: "favoritos")

        itens[2].title = "Pesquisa"
        itens[2].image = UIImage(named: "pesquisar")

        itens[3].title = "Perfil"
        itens[3].image = UIImage(named: "perfil")

        
        
    }
    
    
    
}
