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
    private lazy var signupFieldsStackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, confirmPasswordTextField], axis: .vertical, spacing: 10, distribution: .fill, aligment: .fill)
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
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
       
        view.backgroundColor = AppColors.darkBlue
        
        signupImageView.image = UIImage(named: "travelFamily")
        signupImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        loginLabel.textColor = .gray
        loginLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.textColor = .lightGray
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        /// Appearance
        [signupImageView, signupFieldsStackView, loginStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        /// Constraints
        NSLayoutConstraint.activate([
            signupImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            signupImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            
            signupFieldsStackView.topAnchor.constraint(equalTo: signupImageView.bottomAnchor, constant: 50),
            signupFieldsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            signupFieldsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            signupButton.topAnchor.constraint(equalTo: signupFieldsStackView.bottomAnchor, constant: 20),
            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            loginStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            loginStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
