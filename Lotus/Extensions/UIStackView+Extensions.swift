//
//  UIStackView+Extensions.swift
//  MySwiftExtensions
//
//  Created by Oksana Poliakova on 12.06.2022.
//

import UIKit

// MARK: - Adding arranged subviews to the stackView with property initialization

/// In usage like this:
/// let topStackView = UIStackView(arrangedSubviews: [lessonNameLabel, teacherNameLabel], axis: .horizontal, spacing: 10, distribution: .fillEqually)

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: UIStackView.Distribution, aligment: UIStackView.Alignment) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.alignment = aligment
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
