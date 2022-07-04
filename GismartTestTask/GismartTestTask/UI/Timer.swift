////
////  Timer.swift
////  GismartTestTask
////
////  Created by Stas Dashkevich on 30.06.22.
////

import UIKit

extension OfferViewController {
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        setTimer()
//    }
   
    public func setTimer() {
        timer.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [weak self] timer in
            self?.runTimer()
        })
        timer.fire()

    }
    
    private func final() {
        
    }
    
    public func runTimer() {
        var secondsLeft = getSecondsLeft()
        secondsLeft -= 1
        timerStackView.secondLabel.text = secToTime(secondsLeft)
        timerStackView.minuteLabel.text = minToTime(secondsLeft)
        timerStackView.hourLabel.text = hourToTime(secondsLeft)
        allTime = allToTime(secondsLeft)
    }
    
    public func getSecondsLeft() -> Int {
        let oneDaySec = 60 * 60 * 24
        let formatter = DateFormatter()
        formatter.dateFormat = "HH"
        let now = Date()
        let hour = Int(formatter.string(from: now))!
        formatter.dateFormat = "mm"
        let min = Int(formatter.string(from: now))!
        formatter.dateFormat = "ss"
        var sec = Int(formatter.string(from: now))!
        let nowSec = (hour * 60) + (min * 60) + sec
        sec = 0
        print(nowSec)
        
        return oneDaySec - nowSec
    }
    
     func secToTime(_ seconds: Int) -> String {
        let secLeft = seconds % 60
        var secStr = ""
        if secLeft < 10 {
            secStr = "0\(secLeft)"
        } else {
            secStr = "\(secLeft)"
        }
//        let str = "\(hour) : \(minLeft) : \(secLeft)"
        return secStr
    }
    
    func hourToTime(_ seconds: Int) -> String {
       let min = seconds / 60
       let hour = min / 60
       var hourStr = ""
       if hour < 10 {
           hourStr = "0\(hour)"
       } else {
           hourStr = "\(hour)"
       }
//        let str = "\(hour) : \(minLeft) : \(secLeft)"
       return hourStr
   }
    
    func minToTime(_ seconds: Int) -> String {
       let min = seconds / 60
       let minLeft = min % 60
       var minStr = ""
       if minLeft < 10 {
           minStr = "0\(minLeft)"
       } else {
           minStr = "\(minLeft)"
       }
//        let str = "\(hour) : \(minLeft) : \(secLeft)"
       return minStr
   }
    
    func allToTime(_ seconds: Int) -> String {
       let min = seconds / 60
       let hour = min / 60
       let minLeft = min % 60
       let secLeft = seconds % 60
       var hourStr = ""
       var minStr = ""
       var secStr = ""
       if hour < 10 {
           hourStr = "0\(hour)"
       } else {
           hourStr = "\(hour)"
       }
       if minLeft < 10 {
           minStr = "0\(minLeft)"
       } else {
           minStr = "\(minLeft)"
       }
       if secLeft < 10 {
           secStr = "0\(secLeft)"
       } else {
           secStr = "\(secLeft)"
       }
       return " : \(minStr) : \(secStr)"
   }
}

