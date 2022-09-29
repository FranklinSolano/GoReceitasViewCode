//
//  LogoFundo.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/29/22.
//

import UIKit

class LogoFundo: UIImageView {

    init(){
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        image = UIImage(named: "logoFundo")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
