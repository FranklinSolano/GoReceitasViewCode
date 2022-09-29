//
//  PesquisaView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/14/22.
//

import UIKit

class PesquisaView: UIView {
    
    var usuario: Usuario = Usuario(nome: UITextField() , email: UITextField(), senha: UITextField(), confirmarSenha: UITextField())

    lazy var label:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Olá, Franklin "
        label.textColor = UIColor(red: 149/255, green: 1/255, blue: 239/255, alpha: 1)
        return label
    }()
    
    lazy var imageTop:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "imagePerfil")
        return image
    }()
    
    lazy var labelProcurar: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Procurar"
        label.font = UIFont.systemFont(ofSize: 45, weight: .bold)
        label.textColor = UIColor(red: 149/255, green: 1/255, blue: 239/255, alpha: 1)
        return label
    }()
    
    lazy var searchBar: UISearchBar = {
        let pesquisa = UISearchBar()
        pesquisa.translatesAutoresizingMaskIntoConstraints = false
        pesquisa.placeholder = "Nome ou ingredientes..."
        pesquisa.searchBarStyle = .minimal
        return pesquisa
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
    }
    
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)

    }
    private func configSuperView(){
        self.addSubview(self.label)
        self.addSubview(self.imageTop)
        self.addSubview(self.labelProcurar)
        self.addSubview(self.searchBar)
    }
    
    
  
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
