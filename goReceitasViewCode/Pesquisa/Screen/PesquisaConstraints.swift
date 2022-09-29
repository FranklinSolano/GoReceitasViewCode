//
//  PesquisaConstraints.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/21/22.
//

import UIKit



extension PesquisaView {
    
        func setUpConstraints(){
        NSLayoutConstraint.activate([
        
    
            
            self.label.topAnchor.constraint(equalTo: self.topAnchor,constant: 85),
            self.label.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            self.imageTop.topAnchor.constraint(equalTo: self.topAnchor,constant: 77),
            self.imageTop.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            self.imageTop.widthAnchor.constraint(equalToConstant: 48),
            self.imageTop.heightAnchor.constraint(equalToConstant: 48),
            
            self.labelProcurar.topAnchor.constraint(equalTo: self.label.bottomAnchor,constant: 40),
            self.labelProcurar.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            
            self.searchBar.topAnchor.constraint(equalTo: self.labelProcurar.bottomAnchor,constant: 20),
            self.searchBar.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 35),
            self.searchBar.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
         
        
        
        ])
    }
}
