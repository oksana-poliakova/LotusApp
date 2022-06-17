//
//  MainAppButton.swift
//  Lotus
//
//  Created by Oksana Poliakova on 17.06.2022.
//

import UIKit

class MainAppButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        
        applyButtonStyles()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func applyButtonStyles() {
        backgroundColor = AppColors.lightGreen
        setTitleColor(AppColors.black, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        layer.cornerRadius = 8
    }
}
