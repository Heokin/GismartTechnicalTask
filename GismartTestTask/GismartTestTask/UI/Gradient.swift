//
//  Gradient.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit

class Gradient {
    
    private let gradient: CAGradientLayer!
    
    public func setGradientBackground(view: UIView) {
        let backgroundLayer    = self.gradient
        if Constants.shared.isBig{
            backgroundLayer?.frame = CGRect(x: 0, y: 0, width: 403, height: 88)
        } else {
            backgroundLayer?.frame = CGRect(x: 0, y: 0, width: 300, height: 63)
        }
        view.layer.insertSublayer(backgroundLayer!, at: 0)
    }
    
    init() {
        let topColor    = UIColor(named: "blue")!.cgColor
        let bottomColor = UIColor(named: "purple")!.cgColor
        
        self.gradient           = CAGradientLayer()
        self.gradient.colors    = [topColor, bottomColor]
        self.gradient.locations = [0.0, 1.0]
        self.gradient.cornerRadius = 16
    }
    
}
