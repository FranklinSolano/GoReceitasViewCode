//
//  FavoritosConstraints.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//
import UIKit
import Foundation

extension FavoritosView{
    
            func setUpConstraints(){
        NSLayoutConstraint.activate([
        
            self.labelReceitas.topAnchor.constraint(equalTo: self.topAnchor,constant: 55),
            self.labelReceitas.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.labelGo.topAnchor.constraint(equalTo: self.labelReceitas.topAnchor),
            self.labelGo.leadingAnchor.constraint(equalTo: self.labelReceitas.leadingAnchor,constant: -35),
            
            self.imageLogoTop.topAnchor.constraint(equalTo: self.labelReceitas.topAnchor),
            self.imageLogoTop.trailingAnchor.constraint(equalTo: self.labelReceitas.trailingAnchor,constant: 35),
            self.imageLogoTop.heightAnchor.constraint(equalToConstant: 33),
            self.imageLogoTop.widthAnchor.constraint(equalToConstant: 30),
            
            self.imageFavoritos.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.imageFavoritos.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            self.labelSemFavoritos.topAnchor.constraint(equalTo: self.imageFavoritos.bottomAnchor,constant: 25),
            self.labelSemFavoritos.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.labelSemFavoritos.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            self.labelinformacao.topAnchor.constraint(equalTo: self.labelSemFavoritos.bottomAnchor,constant: 15),
            self.labelinformacao.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.labelinformacao.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            
            
            
         
            
            
        
         
        
        
        ])
    }
}
