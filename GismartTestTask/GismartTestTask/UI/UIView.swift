//
//  UIView.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 30.06.22.
//

import Foundation
import UIKit

extension UIView {
    convenience init( backgroundColor: UIColor = UIColor(named: "timer")!  ,cornerRadius: CGFloat = 9) {
        self.init()
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.layer.masksToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
