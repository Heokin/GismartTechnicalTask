//
//  Constants.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit

final  class Constants {
    
    public static let shared = Constants()
    
    public var isBig: Bool {
        if screenSize.height > 927 {
            print("ipad setup")
            return true
        } else {
            print("iphone setup")
            return false
        }
    }
    
    public var screenSize: CGSize {
        return UIScreen.main.bounds.size
    }
}
