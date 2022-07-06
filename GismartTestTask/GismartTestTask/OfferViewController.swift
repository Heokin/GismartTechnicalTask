//
//  OfferViewController.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit


class OfferViewController: UIViewController {
    
    
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
    
    var timer: Timer = Timer()
    static var secondsInDay = 86400
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(timerCounter),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        setupNotification()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        setupNotification()
    }
    
    private func setupNotification() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didEnterBG)
                                               , name: UIScene.didActivateNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(willEnterFG),
                                               name: UIScene.willDeactivateNotification,
                                               object: nil)
    }
    
    @objc private func didEnterBG(notification: NSNotification) {
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(timerCounter),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc private func willEnterFG(notification: NSNotification) {
        timer.invalidate()
    }
    
    @objc func timerCounter() {
        
        guard OfferViewController.secondsInDay != 0 else {
            timer.invalidate()
            return
        }
        
        OfferViewController.secondsInDay -= 1
        let time = DHMSSeconds(seconds: OfferViewController.secondsInDay)
        
        animationTime(label: timerStackView.dayLabel, time: time.0)
        animationTime(label: timerStackView.hourLabel, time: time.1)
        animationTime(label: timerStackView.minuteLabel, time: time.2)
        animationTime(label: timerStackView.secondLabel, time: time.3)
    }
    
    private func DHMSSeconds(seconds: Int) -> (Int,Int,Int,Int) {
        return (seconds / (3600  * 24),
                (seconds / 3600),
                (seconds % 3600) / 60 ,
                (seconds % 3600) % 60)
    }

    private func animationTime(label: UILabel, time: Int) {
        if label.text !=  String(format: "%02d", time) {
            UIView.transition(with: label,
                              duration: 0.9,
                              options: .transitionFlipFromLeft,
                              animations: {
                label.text = String(format: "%02d", time)
            }, completion: nil)
        }
    }
    
    public func saveTimePopUp() -> String {
        var time = ""
        if timerStackView.dayLabel.text != "00" {
            time += "01:00:00:00"
        } else {
            guard timerStackView.hourLabel.text == "00"  else {
                time += timerStackView.hourLabel.text! + ":" + timerStackView.minuteLabel.text! + ":" + timerStackView.secondLabel.text!
                return time
            }
            
            guard timerStackView.minuteLabel.text == "00" else {
                time += timerStackView.minuteLabel.text!  + ":" + timerStackView.secondLabel.text!
                return time
            }
            
            guard timerStackView.secondLabel.text == "00" else {
                time += timerStackView.secondLabel.text!
                return time
            }
        }
        return time
    }
    
    @objc func offerTaped() {
        view.layer.opacity = 0.6
        let vc = PopUpViewController()
        vc.popUpDownLabel.text = "Offer activated \(saveTimePopUp())"
//        NotificationCenter.default.removeObserver(self)
        present(vc, animated: true, completion: nil)
        timer.invalidate()
        
     
    }
}
