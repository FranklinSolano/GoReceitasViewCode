//
//  LabelCampos.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/29/22.
//

import UIKit
import GoogleSignIn

class ButtonGoogle: UIButton {
    init(){
        super.init(frame: .zero)
    translatesAutoresizingMaskIntoConstraints = false
    titleLabel?.font = UIFont.systemFont(ofSize: 15)
        setTitleColor(.black, for: .normal)
    backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 221/255, alpha: 1)

    clipsToBounds = true
    layer.cornerRadius = 10
        setTitle("Entrar com o Google", for: .normal)

}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
