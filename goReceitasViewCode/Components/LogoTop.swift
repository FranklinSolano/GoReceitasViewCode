//
//  LogoTop.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/29/22.
//

import UIKit

class LogoTop: UIImageView {
    
    init() {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        image = UIImage(named: "logoTop")
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
  
   
