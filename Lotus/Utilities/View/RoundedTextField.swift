//
//  RoundedTextField.swift
//  Lotus
//
//  Created by Oksana Poliakova on 17.06.2022.
//

import UIKit

enum TextFieldColorStyle {
    case gray
    case white
}

class RoundedTextField: UITextField {

    init(type: TextFieldColorStyle) {
        super.init(frame: .zero)
        
        switch type {
        case .gray:
            setRoundedGrayTextField()
        case .white:
            setRoundedWhiteTextField()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setRoundedGrayTextField() {
        layer.cornerRadius = 8
        backgroundColor = AppColors.darkGray
        attributedPlaceholder = NSAttributedString(
            string: "Placeholder Text",
            attributes: [NSAttributedString.Key.foregroundColor: AppColors.gray]
        )
        setLeftPaddingPoints(15)
    }
    
    private func setRoundedWhiteTextField() {
        layer.cornerRadius = 8
        backgroundColor = AppColors.white
        attributedPlaceholder = NSAttributedString(
            string: "Placeholder Text",
            attributes: [NSAttributedString.Key.foregroundColor: AppColors.black]
        )
        setLeftPaddingPoints(15)
    }
}
