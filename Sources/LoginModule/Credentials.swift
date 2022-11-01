//
//  Credentials.swift
//  
//
//  Created by Rosendo Vazquez on 31/10/22.
//

import Foundation
import UIKit

public class Credentials:UIViewController{
    //MARK: Properties
    let username = "Admin"
    let password = "1234"
    
    
    //MARK: UIProperties
    lazy var imgLogo: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName: "lock.shield")
        img.tintColor = UIColor(red: 1.00, green: 0.78, blue: 0.00, alpha: 1.00)
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var tfUserName: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Nombre de usuario"
        return tf
    }()
    
    lazy var tfPassword: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Contraseña"
        tf.isSecureTextEntry = true
        tf.keyboardType = .numberPad
        return tf
    }()
    
    lazy var btnLogin: UIButton = {
        let btn = UIButton()
        btn.setTitle("Iniciar sesión", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()
    
    lazy var lblResult: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 40)
        lbl.textColor = .green
        return lbl
    }()
    
    
    //MARK: Init
    public init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: LifeCycle
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: Functions
    func setupView(){
        view.backgroundColor = UIColor(red: 0.47, green: 0.31, blue: 0.73, alpha: 1.00)
        
        view.addSubview(imgLogo)
        imgLogo.translatesAutoresizingMaskIntoConstraints = false
        imgLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imgLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -98).isActive = true
        imgLogo.widthAnchor.constraint(equalToConstant: 90).isActive = true
        imgLogo.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        view.addSubview(tfUserName)
        tfUserName.translatesAutoresizingMaskIntoConstraints = false
        tfUserName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tfUserName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        tfUserName.widthAnchor.constraint(equalToConstant: 232).isActive = true
        tfUserName.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        view.addSubview(tfPassword)
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        tfPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tfPassword.topAnchor.constraint(equalTo: tfUserName.bottomAnchor, constant: 20).isActive = true
        tfPassword.widthAnchor.constraint(equalToConstant: 232).isActive = true
        tfPassword.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        view.addSubview(btnLogin)
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        btnLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnLogin.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 20).isActive = true
        btnLogin.widthAnchor.constraint(equalToConstant: 232).isActive = true
        btnLogin.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        
    }
    
    
    
    //MARK: Actions
    @objc func login(){
        guard let user = tfUserName.text,
              let pass = tfPassword.text else { return  }
        
        if user == username && pass == password {
            print("Login success")
        }  else{
            print("Login failed")
        }
        
        
    }
    
    
    
    
}
