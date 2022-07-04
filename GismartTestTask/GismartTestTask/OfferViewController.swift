//
//  OfferViewController.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit

final class OfferViewController: UIViewController {
    
    //MARK: - Create UI
    lazy var bottomStackView = PrivacyRestoreTermsStackView()
    lazy var timerStackView = TimerStackView()
    lazy var buttonOffer = ButtonActivate("activate offer".uppercased())
    lazy var pocketSong = Label(style: .pocketSongs, "Hundreds of songsin your pocket")
    lazy var musicFans = Label(style: .musicFans, "For true music fans")
    lazy var discount = Label(style: .discount, "90% OFF")
    lazy var lastChance = Label(style: .minuteChance, "LAST-MINUTE CHANCE! \n to claim your offer")
    lazy var imageMusic = UIImageView(image:UIImage(named: "music"))
    lazy var secondView = UIView(cornerRadius: 15)
    lazy var mainView = UIView(backgroundColor: .black, cornerRadius: 14)
    lazy var xMarkButton = UIButton(systemName: "xmark")
    var allTime = "fromOffer"
    var t = "faffsas"
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setTimer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @objc func offerTaped() {
        view.layer.opacity = 0.6
//        delegate?.update(text: t)
        present(PopUpViewController(), animated: true, completion: nil)
        timer.invalidate()
        print(allTime)
    }
}


