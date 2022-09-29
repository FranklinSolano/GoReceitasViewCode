//
//  CustomLabelCAracteristicas.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/30/22.
//

import UIKit

class CustomLabelCAracteristicas: UILabel {

    init(text: String? = "Default"){
        super.init(frame: .zero)
        
        
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .black
        font = UIFont.boldSystemFont(ofSize: 16)
        self.text = text
        
}


required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}
}
