//
//  Label+.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit

final class Label: UILabel {
    
    enum LabelStyle {
        case privacyRestoreTerms
        case pocketSongs
        case musicFans
        case discount
        case minuteChance
        case timerLabel
        case popUpTopLabel
        case popUpBottomLabel
    }
    
    init(style: LabelStyle, _ text: String?) {
        super.init(frame: .zero)
        
        self.text = text
        textColor = .white
        numberOfLines = 0
        textAlignment = .center
        
        translatesAutoresizingMaskIntoConstraints = false
        
        switch style {
            
        case .privacyRestoreTerms:
            
            textColor = .white.withAlphaComponent(0.5)
            if Constants.shared.isBig {
                font = UIFont.systemFont(ofSize: 14, weight: .regular)
            } else {
                font = UIFont.systemFont(ofSize: 10, weight: .regular)
            }
        case .pocketSongs:
            textColor = .white.withAlphaComponent(0.6)
            if Constants.shared.isBig {
                font = UIFont.systemFont(ofSize: 18, weight: .regular)
            } else {
                font = UIFont.systemFont(ofSize: 14, weight: .regular)
            }
        case .musicFans:
            if Constants.shared.isBig {
                font = UIFont.systemFont(ofSize: 20, weight: .semibold)
            } else {
                font = UIFont.systemFont(ofSize: 15, weight: .semibold)
            }
        case .discount:
            if Constants.shared.isBig {
                font = UIFont.systemFont(ofSize: 80, weight: .black)
            } else {
                font = UIFont.systemFont(ofSize: 55, weight: .black)
            }
        case .minuteChance:
            if Constants.shared.isBig {
                font = UIFont.systemFont(ofSize: 35, weight: .semibold)
            } else {
                font = UIFont.systemFont(ofSize: 22, weight: .semibold)
            }
        case .timerLabel:
            font = UIFont.systemFont(ofSize: 15, weight: .bold)
        case .popUpTopLabel:
            font = UIFont.systemFont(ofSize: 27, weight: .black)
            layer.shadowColor = UIColor.white.cgColor
            layer.shadowOffset = CGSize(width: 3, height: 3)
            layer.shadowRadius = 20
            layer.shadowOpacity = 1.0
        case .popUpBottomLabel:
            font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
