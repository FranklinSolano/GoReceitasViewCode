//
//  LabelGo.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/29/22.
//

import UIKit

class CustomLabelGo: UILabel {

    override init(frame: CGRect) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        font = UIFont.systemFont(ofSize: 27)
        text = "Go"
        textColor = UIColor(red: 149/255, green: 1/255, blue: 239/255, alpha: 1)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
