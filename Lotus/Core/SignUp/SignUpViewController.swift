//
//  SignUpViewController.swift
//  Lotus
//
//  Created by Oksana Poliakova on 17.06.2022.
//

import UIKit

class SignUpViewController: UIViewController {

    // MARK: - Properties
    
    private let signupImageView = UIImageView()
    private let emailTextField = RoundedTextField(type: .gray)
    private let passwordTextField = RoundedTextField(type: .gray)
    private let confirmPasswordTextField = RoundedTextField(type: .gray)
    private let signupButton = MainAppButton()
    private let loginLabel = UILabel()
    private let loginButton = UIButton()
    private lazy var signupFieldsStackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, confirmPasswordTextField], axis: .vertical, spacing: 15, distribution: .fill, aligment: .fill)
    private lazy var loginStackView = UIStackView(arrangedSubviews: [loginLabel, loginButton], axis: .horizontal, spacing: 10, distribution: .fill, aligment: .fill)

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
        
        signupImageView.image = UIImage(named: "travelFamily")
        signupImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        /// Text fields
        emailTextField.placeholder = "Please enter your email"
        passwordTextField.placeholder = "Please enter your password"
        confirmPasswordTextField.placeholder = "Please confirm your password"
        
        /// Label
        loginLabel.text = "Already member?"
        loginLabel.textColor = AppColors.gray
        loginLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        /// Buttons
        signupButton.setTitle("Sign Up", for: .normal)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.textColor = .lightGray
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.addTarget(self, action: #selector(tapActionButton), for: .touchUpInside)
        
        /// Appearance
        [signupImageView, signupFieldsStackView, loginStackView, signupButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
       
        /// Constraints
        NSLayoutConstraint.activate([
            signupImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            signupImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            signupImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            
            signupFieldsStackView.topAnchor.constraint(equalTo: signupImageView.bottomAnchor, constant: 50),
            signupFieldsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            signupFieldsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            signupButton.topAnchor.constraint(equalTo: signupFieldsStackView.bottomAnchor, constant: 20),
            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            signupButton.heightAnchor.constraint(equalToConstant: 50),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            confirmPasswordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            loginStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            loginStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // MARK: - Actions
    
    @objc func tapActionButton() {
        guard let navigationController = navigationController else { return }
        
        SignUpCoordinator(navigationController: navigationController).start()
    }
}
