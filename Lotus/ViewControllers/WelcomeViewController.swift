//
//  ViewController.swift
//  Lotus
//
//  Created by Oksana Poliakova on 11.06.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - Properties
    
    private let welcomeImageView = UIImageView()
    private let welcomeTitleLabel = UILabel()
    private let welcomeDescriptionLabel = UILabel()
    private let signupButton = MainAppButton()
    private let facebookButton = UIButton()
    private lazy var buttonsStackView = UIStackView(arrangedSubviews: [facebookButton, signupButton], axis: .vertical, spacing: 30, distribution: .fill, aligment: .fill)
    
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
        
        welcomeImageView.image = UIImage(named: "traveller")
        welcomeImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
        welcomeTitleLabel.text = "Welcome"
        welcomeTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        welcomeTitleLabel.textColor = AppColors.lightGray
        
        welcomeDescriptionLabel.text = "Adventurous travelers like to take \n the road less traveled when visiting \n a new country."
        welcomeDescriptionLabel.numberOfLines = 0
        welcomeDescriptionLabel.textColor = AppColors.lightGray
        welcomeDescriptionLabel.font = UIFont.boldSystemFont(ofSize: 14)
        welcomeDescriptionLabel.addInterlineSpacing(spacingValue: 3.5)
        welcomeDescriptionLabel.textAlignment = .center
        
        /// Buttons
        signupButton.setTitle("Sign Up With Email", for: .normal)
        
        facebookButton.setTitle("Continue With Facebook", for: .normal)
        facebookButton.titleLabel?.textColor = AppColors.lightGray
        facebookButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        /// Appearance
        [welcomeImageView, welcomeTitleLabel, welcomeDescriptionLabel, buttonsStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        /// Constraints
        NSLayoutConstraint.activate([
            welcomeImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            welcomeImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            
            welcomeTitleLabel.topAnchor.constraint(equalTo: welcomeImageView.bottomAnchor, constant: 50),
            welcomeTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            welcomeDescriptionLabel.topAnchor.constraint(equalTo: welcomeTitleLabel.bottomAnchor, constant: 20),
            welcomeDescriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            welcomeDescriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            signupButton.heightAnchor.constraint(equalToConstant: 50),
            
            buttonsStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            buttonsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            buttonsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
        ])
    }
    

}

