//
//  ForgotPasswordViewController.swift
//  Lotus
//
//  Created by Oksana Poliakova on 20.06.2022.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    // MARK: - Properties
    
    private let forgotPassImageView = UIImageView()
    private let forgotTitle = UILabel()
    private let forgotDescription = UILabel()
    private let emailTextField = RoundedTextField(type: .gray)
    private let sendButton = MainAppButton()
    private let checkMailView = UIView()
    private let checkMailLabel = UILabel()
    private let doneButton = MainAppButton()
    
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
        
        checkMailView.alpha = 0.4
        checkMailView.isHidden = true
                
        /// Image
        forgotPassImageView.image = UIImage(named: "travelFamily")
        forgotPassImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        /// Labels
        forgotTitle.text = "Did you forget you password?"
        forgotTitle.font = UIFont.boldSystemFont(ofSize: 22)
            
        forgotDescription.text = "Enter your email address you signed up with and we will send instructions on how to reset your password"
        forgotDescription.font = UIFont.systemFont(ofSize: 16)
        
        [forgotTitle, forgotDescription].forEach {
            $0.textColor = AppColors.white
        }
        
        checkMailLabel.text = "Check your mailbox"
        checkMailLabel.textColor = AppColors.white
        checkMailLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
        /// Text field & Button
        emailTextField.placeholder = "Please enter your email"
        
        sendButton.setTitle("Send", for: .normal)
        sendButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        sendButton.titleLabel?.textColor = AppColors.black
        
        doneButton.setTitle("Done", for: .normal)
                    
        /// Appearance
        [forgotPassImageView, forgotTitle, forgotDescription, sendButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
       
        /// Constraints
        NSLayoutConstraint.activate([
            forgotPassImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            forgotPassImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            forgotPassImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            
            sendButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            sendButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            emailTextField.bottomAnchor.constraint(equalTo: sendButton.topAnchor, constant: -30),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            forgotTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            forgotTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            checkMailView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            checkMailView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            checkMailView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            checkMailView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
