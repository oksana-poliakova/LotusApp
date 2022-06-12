//
//  Label+Extensions.swift
//  Lotus
//
//  Created by Oksana Poliakova on 12.06.2022.
//

import UIKit

extension UILabel {

    // MARK: - spacingValue is spacing that you need
    
    func addInterlineSpacing(spacingValue: CGFloat = 2) {
        guard let textString = text else { return }
        let attributedString = NSMutableAttributedString(string: textString)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = spacingValue
        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: attributedString.length
        ))

        attributedText = attributedString
    }

}
