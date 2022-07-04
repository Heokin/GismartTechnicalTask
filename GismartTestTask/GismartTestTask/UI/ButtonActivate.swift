//
//  Button.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit

final class ButtonActivate: UIButton {
    
    let gradient = Gradient()
        override func layoutSubviews() {
               super.layoutSubviews()
               gradientLayer.frame = bounds
           }
    
    init(_ text: String) {
        super.init(frame: .zero)
        
        self.setTitle(text, for: .normal)
        layer.shadowColor = UIColor(named: "purple")?.cgColor
        layer.shadowOffset = CGSize(width: 7, height: 7)
        layer.shadowRadius = 20
        layer.masksToBounds = false
        layer.shadowOpacity = 1
        gradient.setGradientBackground(view: self)
        translatesAutoresizingMaskIntoConstraints = false
        
        if Constants.shared.isBig {
            titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
            layer.cornerRadius = 12
            widthAnchor.constraint(equalToConstant: 403).isActive = true
            heightAnchor.constraint(equalToConstant: 88).isActive = true
        } else {
            titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
            layer.cornerRadius = 12
            widthAnchor.constraint(equalToConstant: 300).isActive = true
            heightAnchor.constraint(equalToConstant: 63).isActive = true
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
           private lazy var gradientLayer: CAGradientLayer = {
               let l = CAGradientLayer()
               l.frame = self.bounds
               l.colors = [UIColor(named: "blue")!, UIColor(named: "purple")!]
               l.startPoint = CGPoint(x: 0, y: 0.5)
               l.endPoint = CGPoint(x: 1, y: 0.5)
               l.cornerRadius = 16
               layer.insertSublayer(l, at: 0)
               return l
           }()
}

extension UIButton {
    convenience init(systemName: String) {
        self.init()
        tintColor = .white
        self.layer.opacity = 0.25
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setImage(UIImage(systemName: systemName), for: .normal)
    }
}
