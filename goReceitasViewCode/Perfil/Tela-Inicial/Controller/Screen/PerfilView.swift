//
//  PerfilView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/14/22.
//

import UIKit

protocol PerfilViewProtocool:AnyObject{
//    func actionMudarEmailButton()
    func actionMudarSenhaButton()
    func actionSairButton()
    func actionEditEmail()
}

class PerfilView: UIView {
    weak private var delegate:PerfilViewProtocool?
    
    func delegate(delegate:PerfilViewProtocool?){
        self.delegate = delegate
    }
    
    

    lazy var labelReceitas:UILabel = {
        let label = CustomLabelReceitas()
        return label
    }()
    
    lazy var labelGo: UILabel = {
        let label = CustomLabelGo()
        return label
    }()
    
    lazy var imageLogoTopo: UIImageView = {
        let image = LogoTop()
        return image
    }()
    
    lazy var imageLogoPerfil: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "imagePerfil")
        return image
    }()
    
    lazy var imageEditar1: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "editar1")
        return image
    }()
    
    lazy var textFieldUsuario:UITextField = {
        let tx = CustomTextFields(placeholder: "", isSecure: false)
        tx.text = "Franklin Solano"
        tx.textColor = .gray
        tx.isEnabled = false
        return tx
    }()
    
    
    lazy var textFieldemail: UITextField = {
        let tx = CustomTextFields(placeholder: "", isSecure: false)
        tx.text = "franklinsolano@gmail.com"
        tx.textColor = .gray
        tx.isEnabled = false
        return tx
    }()
    
    lazy var imageFerramenta1: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ferramenta")
        return image
    }()
    
    lazy var imageSeta1: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "seta")
        return image
    }()
    

    lazy var alterarSenhaButton: UIButton = {
        let button = AuthButton(placeholder: "Mudar senha")
        button.addTarget(self, action: #selector(self.tappedMudarSenhaButton), for: .touchUpInside)
        return button
    }()
    
    
    lazy var sairButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(.red, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.tintColor = .clear
        button.setTitle("Sair da conta", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.red.cgColor
        button.addTarget(self, action: #selector(self.tappedSairButton), for: .touchUpInside)
        return button
    }()
    lazy var imageSair: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "sair")
        return image
    }()
    
    lazy var imageEditar: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "editar1")
        let gesture = UITapGestureRecognizer(target: self, action: #selector(editEmail))
        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(gesture)
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
    }
    
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)

    }
    private func configSuperView(){
        self.addSubview(self.labelReceitas)
        self.addSubview(self.labelGo)
        self.addSubview(self.imageLogoTopo)
        self.addSubview(self.imageLogoPerfil)
        self.addSubview(self.textFieldUsuario)
        self.addSubview(self.textFieldemail)
        self.addSubview(self.alterarSenhaButton)
        self.addSubview(self.sairButton)
        self.addSubview(self.imageLogoPerfil)
        self.addSubview(self.imageFerramenta1)
        self.addSubview(self.imageSeta1)
        self.addSubview(self.imageSair)
        self.addSubview(self.imageEditar)
        self.addSubview(self.imageEditar1)
    }
    
    
    
//    @objc private func  tappedMudarEmailButton(){
//        self.delegate?.actionMudarEmailButton()
//    }
    @objc private func  tappedMudarSenhaButton(){
        self.delegate?.actionMudarSenhaButton()
    }
    
    @objc private func  tappedSairButton(){
        self.delegate?.actionSairButton()
    }
    
    @objc private func  editEmail(){
        self.delegate?.actionEditEmail()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
