//
//  PasswordView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit

protocol PasswordViewProtocool:AnyObject{
    func actionBackButton()
    func actionButtonEnviar()
}

class PasswordView: UIView {
    
    weak var delegate:PasswordViewProtocool?
    
    func delegate(delegate:PasswordViewProtocool?){
        self.delegate = delegate
    }
  
    lazy var backButton:UIButton = {
        let button = BackButton()
        button.addTarget(self, action: #selector(tappedButtonBack), for: .touchUpInside)
        return button
    }()
    
    lazy var labelGo: UILabel = {
        let label = CustomLabelGo()
        return label
    }()
    
    lazy var labelReceitas: UILabel = {
        let label = CustomLabelReceitas()
        return label
    }()
    
    lazy var logoTop: UIImageView = {
        let image = LogoTop()
        return image
    }()
    
    lazy var informarEmailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Insira seu e-mail"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        return label
    }()
    
    lazy var textFieldEmail: UITextField = {
        let tx = CustomTextFields(placeholder: "email@gmail.com ", isSecure: false)
        return tx
    }()
    
    lazy var buttonEnviar: UIButton = {
        let button = AuthButton(placeholder: "Enviar")
        button.addTarget(self, action: #selector(tappedButtonEnviar), for: .touchUpInside)
        return button
    }()
    
    
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
        self.configbuttonEnable(false)
        
    }
    
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)

    }
    
    private func configSuperView(){
        
        self.addSubview(self.backButton)
        self.addSubview(self.labelGo)
        self.addSubview(self.labelReceitas)
        self.addSubview(self.logoTop)
        self.addSubview(self.informarEmailLabel)
        self.addSubview(self.textFieldEmail)
        self.addSubview(self.buttonEnviar)
        
        
        
    }
    
    public func configTextFieldDelegate(delegate:UITextFieldDelegate){
        self.textFieldEmail.delegate = delegate
    }
    
    
    @objc private func tappedButtonBack(){
        self.delegate?.actionBackButton()
        
    }
    
    @objc private func tappedButtonEnviar(){
        self.delegate?.actionButtonEnviar()
        
    }
    
    public func validaTextField(){
        
        
        let email:String = self.textFieldEmail.text ?? ""
        
    
        
        if !email.isEmpty {
            self.configbuttonEnable(true)
        }else{
            self.configbuttonEnable(false)
        }
        
    }
    private func configbuttonEnable(_ enable:Bool){
        if enable{
            self.buttonEnviar.setTitleColor(.white, for: .normal)
            self.buttonEnviar.isEnabled = true
        }else{
            self.buttonEnviar.setTitleColor(.lightGray, for: .normal)
            self.buttonEnviar.isEnabled = false
        }
    }
    
    public func getEmail() -> String{
        return self.textFieldEmail.text ?? ""
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}



