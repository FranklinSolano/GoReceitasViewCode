//
//  MudarSenhaView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 9/15/22.
//

import UIKit


protocol MudarSenhaViewProtocool: AnyObject {

    func actionSalvarButton()
    func actionCancelarButton()
}

class MudarSenhaView: UIView {
    
    weak var delegate:MudarSenhaViewProtocool?
    
    func delegate(delegate:MudarSenhaViewProtocool?){
        self.delegate = delegate
    }

    lazy var labelReceita:UILabel = {
        let label = CustomLabelReceitas()
        return label
    }()
    
    lazy var labelGo:UILabel = {
        let label = CustomLabelGo()
        return label
    }()
    
    lazy var imageLogoTop:UIImageView = {
        let image = LogoTop()
        return image
    }()
    

    
    lazy var imageLogoPerfil: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "imagePerfil")
        return image
    }()
    
    lazy var textFieldSenhaAtual:UITextField = {
        let tx = CustomTextFields(placeholder: "Senha Atual", isSecure: true)
        return tx
    }()
    
    lazy var textFieldNovaSenha:UITextField = {
        let tx = CustomTextFields(placeholder: "Nova Senha", isSecure: true)
        return tx
    }()
    
    lazy var textFieldConfirmarSenha:UITextField = {
        let tx = CustomTextFields(placeholder: "Confirmar Senha", isSecure: true)
        return tx
    }()
    
    lazy var salvarButton: UIButton = {
        let button = AuthButton(placeholder: "Salvar Alterações")
        button.addTarget(self, action: #selector(self.tappedSalvarButton), for: .touchUpInside)
       return button
    }()
    
    lazy var imageEditar: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "editar")
        return image
    }()
    
    lazy var cancelarButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setTitle("Cancelar", for: .normal)
        button.addTarget(self, action: #selector(self.tappedCancelarButton), for: .touchUpInside)
        return button
        
    }()
    
    lazy var imageOlhoTx1: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "olho")
        return image
    }()
    
    lazy var imageOlhoTx2: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "olho")
        return image
    }()
    
    lazy var imageOlhoTx3: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "olho")
        return image
    }()
    
    lazy var backButton:UIButton = {
        let button = BackButton()
        return button
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
        self.addSubview(self.labelReceita)
        self.addSubview(self.labelGo)
        self.addSubview(self.imageLogoTop)
        self.addSubview(self.imageLogoPerfil)
        self.addSubview(self.textFieldSenhaAtual)
        self.addSubview(self.textFieldNovaSenha)
        self.addSubview(self.textFieldConfirmarSenha)
        self.addSubview(self.salvarButton)
        self.addSubview(self.imageEditar)
        self.addSubview(self.cancelarButton)
        self.addSubview(self.imageOlhoTx1)
        self.addSubview(self.imageOlhoTx2)
        self.addSubview(self.imageOlhoTx3)
        self.addSubview(self.backButton)
    }
    
    
    @objc private func tappedSalvarButton(){
        self.delegate?.actionSalvarButton()
    }
    
    @objc private func tappedCancelarButton(){
        self.delegate?.actionCancelarButton()
    }
    
  
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
