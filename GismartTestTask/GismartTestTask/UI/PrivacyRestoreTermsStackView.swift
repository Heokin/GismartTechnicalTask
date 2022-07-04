//
//  PrivacyRestoreTerms.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit

final class PrivacyRestoreTermsStackView: UIStackView {
    
    //MARK: - Create UI
    lazy var Privacy = Label(style: .privacyRestoreTerms, "Privacy")
    lazy var Restore = Label(style: .privacyRestoreTerms, "Restore")
    lazy var Terms = Label(style: .privacyRestoreTerms, "Terms")
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        stack.spacing = 20
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(Privacy)
        stack.addArrangedSubview(Restore)
        stack.addArrangedSubview(Terms)
        
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor),
            heightAnchor.constraint(equalTo: stack.heightAnchor)
        ])
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
