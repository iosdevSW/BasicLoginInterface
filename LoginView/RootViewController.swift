//
//  RootViewController.swift
//  LoginView
//
//  Created by 신상우 on 2021/02/21.
//

import UIKit

class RootViewController: UIViewController {

    let dataBaseLable:UILabel = {
        let lable = UILabel()
        lable.text = "DataBase"
        lable.font = UIFont.italicSystemFont(ofSize: 40)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    let loginLabel:UILabel = {
        let label = UILabel()
        label.text = "login"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let idTextField:UITextField = {
        let tf = UITextField()
        tf.placeholder = "ID"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var idTextFieldView:UIView = {
        let idView = UIView()
        idView.layer.borderWidth = 1
        idView.layer.cornerRadius = 10
        idView.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        idView.translatesAutoresizingMaskIntoConstraints = false
        
        idView.addSubview(self.idTextField)
        NSLayoutConstraint.activate([
            self.idTextField.topAnchor.constraint(equalTo:idView.topAnchor),
            self.idTextField.bottomAnchor.constraint(equalTo: idView.bottomAnchor),
            self.idTextField.leadingAnchor.constraint(equalTo: idView.leadingAnchor, constant: 10),
            self.idTextField.trailingAnchor.constraint(equalTo: idView.trailingAnchor, constant: -10)
        ])
        return idView
    }()
    
    let passWordTextField:UITextField = {
        let tf = UITextField()
        tf.placeholder = "PW"
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var passWordTextFieldView:UIView = {
        let pwView = UIView()
        pwView.layer.borderWidth = 1
        pwView.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        pwView.layer.cornerRadius = 10
        pwView.translatesAutoresizingMaskIntoConstraints = false
        
        pwView.addSubview(passWordTextField)
        NSLayoutConstraint.activate([
            self.passWordTextField.topAnchor.constraint(equalTo: pwView.topAnchor),
            self.passWordTextField.bottomAnchor.constraint(equalTo: pwView.bottomAnchor),
            self.passWordTextField.leadingAnchor.constraint(equalTo: pwView.leadingAnchor, constant: 10),
            self.passWordTextField.trailingAnchor.constraint(equalTo: pwView.trailingAnchor, constant: -10)
        ])
        return pwView
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type:UIButton.ButtonType.system)
        button.setTitle("LOGIN", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.systemBackground
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemBackground
        
        self.addSubView()
        self.layOut()
        self.configueColor()
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        configueColor() //인터페이스가 변경될때마다 함수가 동작한다.
    }
    
    func configueColor(){ //인터페이스가 다크모드일때 아닐때를 구분하여 버튼 색상지정하기
        if self.traitCollection.userInterfaceStyle == .dark{ //traitCollection 공부하자
            self.loginButton.setTitleColor(.black, for: .normal)
            self.loginButton.backgroundColor = .white
        }else{
            self.loginButton.setTitleColor(.white, for: .normal)
            self.loginButton.backgroundColor = .black
        }
    }
    
}

extension RootViewController{
    func layOut(){
        
        //MARK: dataBaseLable LayOut
        NSLayoutConstraint.activate([
            self.dataBaseLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.dataBaseLable.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 60)
        ])
        
        //MARK: loginLable LayOut
        NSLayoutConstraint.activate([
            self.loginLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginLabel.topAnchor.constraint(equalTo: self.dataBaseLable.bottomAnchor, constant: 15)
        ])
        
        //MARK: idTextFieldView LayOut
        NSLayoutConstraint.activate([
            self.idTextFieldView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.idTextFieldView.topAnchor.constraint(equalTo:self.loginLabel.bottomAnchor, constant: 30),
            self.idTextFieldView.widthAnchor.constraint(equalToConstant: self.view.frame.width - 80),
            self.idTextFieldView.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        //MARK: pwTextFieldView LayOut
        NSLayoutConstraint.activate([
            self.passWordTextFieldView.topAnchor.constraint(equalTo: self.idTextFieldView.bottomAnchor,constant: 10),
            self.passWordTextFieldView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.passWordTextFieldView.widthAnchor.constraint(equalToConstant: self.view.frame.width - 80),
            self.passWordTextFieldView.heightAnchor.constraint(equalToConstant: 40)
        ])
        //MARK: loginButton LayOut
        NSLayoutConstraint.activate([
            self.loginButton.topAnchor.constraint(equalTo: self.passWordTextFieldView.bottomAnchor, constant: 20),
            self.loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginButton.widthAnchor.constraint(equalToConstant: view.frame.width - 80),
            self.loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func addSubView(){
        self.view.addSubview(dataBaseLable)
        self.view.addSubview(loginLabel)
        self.view.addSubview(idTextFieldView)
        self.view.addSubview(passWordTextFieldView)
        self.view.addSubview(loginButton)
    }
}
