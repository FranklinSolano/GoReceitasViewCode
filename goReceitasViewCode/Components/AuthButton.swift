//
//  AuthButton.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit

class AuthButton: UIButton {

    init(placeholder: String? = "Default"){
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        setTitleColor(.white, for: .normal)
        backgroundColor = UIColor(red: 149/255, green: 1/255, blue: 239/255, alpha: 1)


        clipsToBounds = true
        layer.cornerRadius = 10
        setTitle(placeholder, for: .normal)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
