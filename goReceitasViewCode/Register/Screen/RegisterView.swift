//
//  RegisterView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit

protocol RegisterViewProtocool:AnyObject{
    func actionBackButton()
    func actionBackLogin()
    func actionCadastrarButton()
    
}

class RegisterView: UIView {
    
    

    
    weak var delegate:RegisterViewProtocool?
    
    func delegate(delegate:RegisterViewProtocool?){
        self.delegate = delegate
    }


    lazy var labelReceitas: UILabel = {
        let label = CustomLabelReceitas()
        return label
    }()
    
    lazy var labelGo: UILabel = {
        let label = CustomLabelGo()
        return label
    }()
    
    
    lazy var imageTopo: UIImageView = {
        let image = LogoTop()
        return image
    }()
    
    lazy var backButton: UIButton = {
        let button = BackButton()
        button.addTarget(self, action: #selector(self.tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var labelCadastro:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cadastro"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .black
        return label
    }()
    
    lazy var labelNome: UILabel = {
        let label = CustomLabelCAracteristicas(text: "Nome")
        
        return label
    }()
    
    lazy var textFieldNome: UITextField = {
        let tx = CustomTextFields(placeholder: "Digite seu Nome:", isSecure: false)
        return tx
    }()
    
    lazy var labelEmail: UILabel = {
        let label = CustomLabelCAracteristicas(text: "Email")
        return label
    }()
    
    lazy var textFieldEmail: UITextField = {
        let tx = CustomTextFields(placeholder: "Digite seu email ", isSecure: false)
        return tx
    }()
    
    lazy var labelSenha: UILabel = {
        let label = CustomLabelCAracteristicas(text: "Senha")
        return label
    }()
    
    lazy var textFielSenha: UITextField = {
        let tx = CustomTextFields(placeholder: "Escolha uma senha:", isSecure: true)
        return tx
    }()
    
    lazy var labelConfirmaSenha: UILabel = {
        let label = CustomLabelCAracteristicas(text: "Confirmar sua senha")
        return label
    }()
    
    lazy var textFielConfirmarSenha: UITextField = {
        let tx = CustomTextFields(placeholder: "Digite novamente sua senha:", isSecure: true)
        return tx
    }()
    
    lazy var cadastrarButton: UIButton = {
        let button = AuthButton(placeholder: "Cadastrar")
        button.addTarget(self, action: #selector(self.tappedCadastrar), for: .touchUpInside)
        return button
    }()
    
    lazy var backLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let atts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(ciColor: .black), .font: UIFont.systemFont(ofSize: 15)]
        let attributedTitle = NSMutableAttributedString(string: "Já tem conta? ", attributes: atts)
        let boldAtts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(red: 101/255, green: 33/255, blue: 165/255, alpha: 1), .font: UIFont.boldSystemFont(ofSize: 15)]
        attributedTitle.append(NSAttributedString(string: "Login", attributes: boldAtts))
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.setTitleColor(UIColor(red: 101/255, green: 33/255, blue: 165/255, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(self.tappedBackLogin), for: .touchUpInside)
        return button
    }()
    lazy var imageLogo: UIImageView = {
        let image = LogoFundo()
        return image
    }()
        
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpConstraints()
        self.configbuttonEnable(false)
        
    }
    
    private func configSuperView(){
        self.addSubview(self.labelReceitas)
        self.addSubview(self.labelGo)
        self.addSubview(self.imageTopo)
        self.addSubview(self.backButton)
        self.addSubview(self.labelCadastro)
        self.addSubview(self.labelNome)
        self.addSubview(self.textFieldNome)
        self.addSubview(self.labelEmail)
        self.addSubview(self.textFieldEmail)
        self.addSubview(self.labelSenha)
        self.addSubview(self.textFielSenha)
        self.addSubview(self.labelConfirmaSenha)
        self.addSubview(self.textFielConfirmarSenha)
        self.addSubview(self.cadastrarButton)
        self.addSubview(self.backLogin)
        self.addSubview(self.imageLogo)
        
    }
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)

    }
    
    public func configTextFieldDelegate(delegate:UITextFieldDelegate){
        self.textFieldEmail.delegate = delegate
        self.textFieldEmail.delegate = delegate
        self.textFieldNome.delegate = delegate
        self.textFielConfirmarSenha.delegate = delegate
    }
    
    @objc private func tappedBackButton(){
        self.delegate?.actionBackButton()
    }
    
    @objc private func tappedBackLogin(){
        self.delegate?.actionBackLogin()
    }
    @objc private func tappedCadastrar(){
        self.delegate?.actionCadastrarButton()
    }
    
    public func validaTextField(){
        
        let nome:String = self.textFieldNome.text ?? ""
        let email:String = self.textFieldEmail.text ?? ""
        let senha:String = self.textFielSenha.text ?? ""
        let confirmarSenha = self.textFielConfirmarSenha.text ?? ""
        
        if !nome.isEmpty && !email.isEmpty && !senha.isEmpty && !confirmarSenha.isEmpty {
            self.configbuttonEnable(true)
        }else{
            self.configbuttonEnable(false)
        }
        
    }
    private func configbuttonEnable(_ enable:Bool){
        if enable{
            self.cadastrarButton.setTitleColor(.white, for: .normal)
            self.cadastrarButton.isEnabled = true
        }else{
            self.cadastrarButton.setTitleColor(.lightGray, for: .normal)
            self.cadastrarButton.isEnabled = false
        }
    }
    
    
    public func getEmail()-> String{
        return self.textFieldEmail.text ?? ""
    }
    public func getSenha()-> String{
        return self.textFielSenha.text ?? ""
    }
    
    public func DadosUsuario(){

        var usuario: Usuario = Usuario(nome: textFieldNome, email: textFieldEmail, senha: textFielSenha, confirmarSenha: textFielConfirmarSenha)
        
        usuario.nome = textFieldNome
        usuario.email = textFieldEmail
        usuario.senha = textFielSenha
        usuario.confirmarSenha = textFielConfirmarSenha
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
