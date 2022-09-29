//
//  LoginView.swift
//  goReceitasViewCode
//
//  Created by Franklin  Stilhano on 8/28/22.
//

import UIKit
import GoogleSignIn



protocol LoginViewProtocool:AnyObject{
    
    func actionLoginButton()
    func actionRegisterButton()
    func actionEsqueceuSenhaButton()
    func actionLoginGoogle()
}


class LoginView: UIView {
    


    
   private weak var delegate:LoginViewProtocool?
    
    func delegate(delegate:LoginViewProtocool?){
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
    
    lazy var imageTopLogo: UIImageView = {
        let image = LogoTop()
        return image
    }()
    
    lazy var labelEmail: UILabel = {
        let label = CustomLabelCAracteristicas(text: "E-mail")
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tx = CustomTextFields(placeholder: "Digite seu email", isSecure: false)
        tx.keyboardType = .emailAddress
        return tx
    }()
    
    lazy var labelSEnha: UILabel = {
        let label = CustomLabelCAracteristicas(text: "Senha")
        return label
    }()
    
    lazy var senhaTextField: UITextField = {
        let tx = CustomTextFields(placeholder: "Digite sua senha", isSecure: true)
       return tx
    }()
    
    lazy var esqueceuSenhaButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitle("Esqueceu sua senha?", for: .normal)
        button.addTarget(self, action: #selector(self.tappedEsqueceuSenhaButton), for: .touchUpInside)
        return button
    }()
    
    lazy var acessarButton: UIButton = {
        let button = AuthButton(placeholder:"Acessar")
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var labelOu: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "OU"
        label.textAlignment = .center
        return label
    }()
    
    lazy var riscoView: UIView = {
       let view = RiscoView()
        return view
    }()
    
    lazy var riscoView2: UIView = {
       let view = RiscoView()
        return view
    }()
    
    
    lazy var buttonGoogle: UIButton = {
        let button = ButtonGoogle()
        button.addTarget(self, action: #selector(tappedLoginGoogle), for: .touchUpInside)
        return button
    }()
    
    lazy var imageGoogle: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoBotao")
        return image
    }()
    
    lazy var riscoView3: UIView = {
        let view = RiscoView()
        return view
    }()
    

    lazy var cadastraButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let atts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(ciColor: .black), .font: UIFont.systemFont(ofSize: 15)]
        let attributedTitle = NSMutableAttributedString(string: "Não tem uma conta? ", attributes: atts)
        let boldAtts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(red: 101/255, green: 33/255, blue: 165/255, alpha: 1), .font: UIFont.boldSystemFont(ofSize: 15)]
        attributedTitle.append(NSAttributedString(string: "Cadastra-se", attributes: boldAtts))
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.setTitleColor(UIColor(red: 101/255, green: 33/255, blue: 165/255, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(self.tappedCadastrar), for: .touchUpInside)
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
        self.setUpContrainsts()
        self.configbuttonEnable(false)
    }
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 247/255, green: 237/255, blue: 253/255, alpha: 1)
    }
    
    private func configSuperView(){
        self.addSubview(self.labelReceitas)
        self.addSubview(self.labelGo)
        self.addSubview(self.imageTopLogo)
        self.addSubview(self.labelEmail)
        self.addSubview(self.emailTextField)
        self.addSubview(self.labelSEnha)
        self.addSubview(self.senhaTextField)
        self.addSubview(self.esqueceuSenhaButton)
        self.addSubview(self.acessarButton)
        self.addSubview(self.labelOu)
        self.addSubview(self.riscoView)
        self.addSubview(self.riscoView2)
        self.addSubview(self.buttonGoogle)
        self.addSubview(self.imageGoogle)
        self.addSubview(self.riscoView3)
        self.addSubview(self.cadastraButton)
        self.addSubview(self.imageLogo)

    }
    
    public func configTextFieldDelegate(delegate:UITextFieldDelegate){
        self.emailTextField.delegate = delegate
        self.senhaTextField.delegate = delegate
    }
    
    @objc private func tappedEsqueceuSenhaButton(){
        self.delegate?.actionEsqueceuSenhaButton()
    }
    @objc private func tappedLoginButton(){
        self.delegate?.actionLoginButton()
    }
    @objc private func tappedCadastrar(){
        self.delegate?.actionRegisterButton()
    }
    @objc private func tappedLoginGoogle(){
        self.delegate?.actionLoginGoogle()
        
        
        
        
    }
    
    public func getEmail()-> String{
        return self.emailTextField.text ?? ""
    }
    public func getSenha()-> String{
        return self.senhaTextField.text ?? ""
    }
    
    public func validaTextField(){
        
        let email:String = self.emailTextField .text ?? ""
        let senha:String = self.senhaTextField.text ?? ""
 
        
        if !email.isEmpty && !senha.isEmpty  {
            self.configbuttonEnable(true)
        }else{
            self.configbuttonEnable(false)
        }
        
    }
    private func configbuttonEnable(_ enable:Bool){
        if enable{
            self.acessarButton.setTitleColor(.white, for: .normal)
            self.acessarButton.isEnabled = true
        }else{
            self.acessarButton.setTitleColor(.lightGray, for: .normal)
            self.acessarButton.isEnabled = false
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
}
