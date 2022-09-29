//
//  TextFields.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit

class CustomTextFields: UITextField {

    init(placeholder: String, isSecure: Bool) {
        super.init(frame: .zero)
     
        
        translatesAutoresizingMaskIntoConstraints = false
        autocorrectionType = .no
        borderStyle = .roundedRect
        attributedPlaceholder = NSAttributedString(string: placeholder)
        clipsToBounds = true
        layer.cornerRadius = 10
        autocapitalizationType = .none
        isSecureTextEntry = isSecure
        
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
