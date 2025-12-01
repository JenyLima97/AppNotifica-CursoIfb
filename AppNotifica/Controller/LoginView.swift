//
//  LoginView.swift
//  AppNotifica
//
//  Created by Jeny on 02/12/25.
//

//Conterá os elementos do app

import Foundation
import UIKit

class LoginView:UIView {
    
    override init(frame: CGRect) {
        // chama o frame da superclasse
        super.init(frame: frame)
        //define a cor do backGround
        self.backgroundColor = .white
        setUpVisualElements()
    }
    
    //COMPONENTES DA TELA DE LOGIN
    
    
    //funcao com as propriedades da imagem do login
    var imagemLogin: UIImageView = {
        let imagem = UIImageView()
        imagem.image = UIImage(named: "LoginWhite")
        //se adapta a tela
        imagem.contentMode = .scaleAspectFit
        
        //tira a autorizacao de contraints automaticas
        imagem.translatesAutoresizingMaskIntoConstraints = false
        
         //necessario o return
        return imagem
    }()
    
    //cria funcao com as propriedaes da label(texto) do login
    var textLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Light", size: 16)
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        

        return label
    }()
    
    //Entrada de texto , cria as funcoes com entrada de texto para login
    var emailTextField: UITextField = {
        let textField = UITextField()
        textField.layer.backgroundColor = UIColor(red: 1,green: 1,blue: 1,alpha: 1).cgColor
        textField.placeholder = "Email"
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        

        return textField
    }()
    
var senhaTextField: UITextField = {
        let textField = UITextField()
        textField.layer.backgroundColor = UIColor(red: 1,green: 1,blue: 1,alpha: 1).cgColor
        textField.placeholder = "Senha"
        textField.translatesAutoresizingMaskIntoConstraints = false
        

        return textField
    }()
    
    var buttonLogar: UIButton = {
        let button = UIButton()
        button.setTitle("LOGAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369,green: 0.639,blue: 0.639,alpha: 1).cgColor
        button.layer.cornerRadius = 14
        
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
        }()
    
    var buttonRegistrar: UIButton = {
        let button = UIButton()
        button.setTitle("REGISTRAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369,green: 0.639,blue: 0.639,alpha: 1).cgColor
        button.layer.cornerRadius = 14
        
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
        }()
    
    
    
    
    
    //Todos os componentes sao chamados dentro dessa funcao
    func setUpVisualElements(){
        self.addSubview(imagemLogin)
        self.addSubview(textLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        
        //Organizar os elementos visuais na tela
        NSLayoutConstraint.activate( [
            
            //Definindo a altura, largura, comprimento da imagem
            imagemLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imagemLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imagemLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            //imagemLogin.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 57),
            //esses dois sao espacamentos
            imagemLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imagemLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            //---Definindo a label
            textLabel.widthAnchor.constraint(equalToConstant: 100),
//            textLabel.heightAnchor.constraint(equalToConstant: 19),
            textLabel.topAnchor.constraint(equalTo: imagemLogin.bottomAnchor, constant: 5),
            textLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            //Email
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            //Senha
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            //ButtonLogar
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 50),
            buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 30),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            //ButtonRegistrar
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 50),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
            
            
            
    
            
        ]   )
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
