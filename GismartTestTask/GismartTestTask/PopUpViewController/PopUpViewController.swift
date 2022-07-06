//
//  PopUpScreen.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 30.06.22.
//

import Foundation
import UIKit

class PopUpViewController: UIViewController {
    
    let vc = OfferViewController()
    lazy var popUpView = UIView(backgroundColor: UIColor(named: "popUp")!, cornerRadius: 12)
    lazy var popUpUpperLabel = Label(style: .popUpTopLabel, "Great!")
    lazy var popUpDownLabel = Label(style: .popUpBottomLabel, "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

