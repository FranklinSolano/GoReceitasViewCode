//
//  FavoritosView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/14/22.
//

import UIKit

class FavoritosView: UIView {

    lazy var labelReceitas:UILabel = {
        let label = CustomLabelReceitas()
        return label
    }()
    
    lazy var labelGo:UILabel = {
        let label = CustomLabelGo()
        return label
    }()
    
    lazy var imageLogoTop:UIImageView = {
        let image = LogoTop()
        return image
    }()
    
    lazy var imageFavoritos:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoInicial")
        return image
    }()
    
    lazy var labelSemFavoritos: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sem Favoritos"
        label.font = UIFont.systemFont(ofSize: 30, weight: .light)
        label.textAlignment = .center
        return label
    }()
    
    lazy var labelinformacao:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Você não adicionou nenhum prato em seus Favoritos"
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
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
        self.addSubview(self.labelReceitas)
        self.addSubview(self.labelGo)
        self.addSubview(self.imageLogoTop)
        self.addSubview(self.imageFavoritos)
        self.addSubview(self.labelSemFavoritos)
        self.addSubview(self.labelinformacao)
    }
    
 
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   

}
