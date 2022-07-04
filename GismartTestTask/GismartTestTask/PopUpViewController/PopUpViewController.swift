//
//  PopUpScreen.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 30.06.22.
//

import Foundation
import UIKit

class PopUpViewController: UIViewController {
    
    lazy var popUpView = UIView(backgroundColor: UIColor(named: "popUp")!, cornerRadius: 12)
    lazy var popUpUpperLabel = Label(style: .popUpTopLabel, "Great!")
    lazy var popUpDownLabel = Label(style: .popUpBottomLabel, "")
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let destination = segue.destination as? OfferViewController else { return }
//            destination.closure = { [weak self] text in
//                self?.popUpDownLabel.text = text
//            }
//        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

