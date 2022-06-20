//
//  LoginViewController.swift
//  Lotus
//
//  Created by Oksana Poliakova on 18.06.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Properties
    
    private let loginImageView = UIImageView()
    private let loginLabel = UILabel()
    private let emailTextField = RoundedTextField(type: .gray)
    private let passwordTextField = RoundedTextField(type: .gray)
    private let loginButton = MainAppButton()
    private let facebookButton = UIButton()
    private let needAccountLabel = UILabel()
    private let signupButton = UIButton()
    private let forgotPasswordLabel = UILabel()
    private let forgotButton = UIButton()
    
    private lazy var textFieldsStackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField], axis: .vertical, spacing: 15, distribution: .fill, aligment: .fill)
    
    private lazy var buttonStackView = UIStackView(arrangedSubviews: [loginButton, facebookButton], axis: .horizontal, spacing: 10, distribution: .fill, aligment: .fill)
    
    private lazy var needAccountStackView = UIStackView(arrangedSubviews: [needAccountLabel, signupButton], axis: .horizontal, spacing: 5, distribution: .fill, aligment: .fill)
    
    private lazy var forgotPasswordStackView = UIStackView(arrangedSubviews: [forgotPasswordLabel, forgotButton], axis: .horizontal, spacing: 5, distribution: .fill, aligment: .fill)
    
    // MARK: - Init
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
       
        view.backgroundColor = AppColors.darkBlue
        
        loginImageView.image = UIImage(named: "travelFamily")
        loginImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        /// Text fields
        emailTextField.placeholder = "Please enter your email"
        passwordTextField.placeholder = "Please enter your password"
        
        /// Buttons
        signupButton.setTitle("Sign up", for: .normal)
        forgotButton.setTitle("Click here", for: .normal)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.titleLabel?.textColor = AppColors.black
        
        forgotButton.addTarget(self, action: #selector(tappedForgotButton), for: .touchUpInside)
        
        facebookButton.setImage(UIImage(named: "facebookLogo"), for: .normal)
        
        [signupButton, forgotButton].forEach {
            $0.titleLabel?.textColor = AppColors.lightGray
            $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        }
        
        /// Labels
        needAccountLabel.text = "Do you need an account?"
        forgotPasswordLabel.text = "Did you forget your password?"
        
        [needAccountLabel, forgotPasswordLabel].forEach {
            $0.textColor = AppColors.darkGray
            $0.font = UIFont.boldSystemFont(ofSize: 16)
        }
        
        /// Appearance
        [loginImageView, loginLabel, textFieldsStackView, buttonStackView, needAccountStackView, forgotPasswordStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
       
        /// Constraints
        NSLayoutConstraint.activate([
            loginImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            loginImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            loginImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            
            forgotPasswordStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            forgotPasswordStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            forgotPasswordStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            needAccountStackView.bottomAnchor.constraint(equalTo: forgotPasswordStackView.topAnchor, constant: -5),
            needAccountStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            needAccountStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            buttonStackView.bottomAnchor.constraint(equalTo: needAccountStackView.topAnchor, constant: -20),
            buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            textFieldsStackView.bottomAnchor.constraint(equalTo: buttonStackView.topAnchor, constant: -20),
            textFieldsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textFieldsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            loginLabel.bottomAnchor.constraint(equalTo: textFieldsStackView.topAnchor, constant: -10),
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginLabel.topAnchor.constraint(equalTo: loginImageView.bottomAnchor, constant: -100),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
        ])
    }
    
    @objc func tappedForgotButton() {
        guard let navigationController = navigationController else { return }
        
        LoginCoordinator(navigationController: navigationController).clickForgotPassword()
    }
}
