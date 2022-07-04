//
//  TimerStackView.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 30.06.22.
//

import Foundation
import UIKit

final class TimerStackView: UIStackView {
    
    lazy var dayView = UIView(cornerRadius: 14)
    lazy var hourView = UIView(cornerRadius: 13)
    lazy var minuteView = UIView(cornerRadius: 12)
    lazy var secondView = UIView(cornerRadius: 15)
    
    lazy var doubleDot1 = Label(style: .timerLabel, ":")
    lazy var doubleDot2 = Label(style: .timerLabel, ":")
    lazy var doubleDot3 = Label(style: .timerLabel, ":")

    lazy var dayLabel = Label(style: .timerLabel, "00")
    lazy var hourLabel = Label(style: .timerLabel, "00")
    lazy var minuteLabel = Label(style: .timerLabel, "00")
    lazy var secondLabel = Label(style: .timerLabel, "00")
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        stack.spacing = 5
//        stack.setCustomSpacing(20, after: doubleDot1)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(stack)
    
        stack.addArrangedSubview(dayView)
        stack.addArrangedSubview(doubleDot1)
        stack.addArrangedSubview(hourView)
        stack.addArrangedSubview(doubleDot2)
        stack.addArrangedSubview(minuteView)
        stack.addArrangedSubview(doubleDot3)
        stack.addArrangedSubview(secondView)
        
        dayView.addSubview(dayLabel)
        hourView.addSubview(hourLabel)
        minuteView.addSubview(minuteLabel)
        secondView.addSubview(secondLabel)
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor),
            heightAnchor.constraint(equalTo: stack.heightAnchor),
            
            dayView.widthAnchor.constraint(equalToConstant: 60),
            dayView.heightAnchor.constraint(equalToConstant: 41),
            
            hourView.widthAnchor.constraint(equalToConstant: 60),
            hourView.heightAnchor.constraint(equalToConstant: 41),
            
            minuteView.widthAnchor.constraint(equalToConstant: 60),
            minuteView.heightAnchor.constraint(equalToConstant: 41),
            
            secondView.widthAnchor.constraint(equalToConstant: 60),
            secondView.heightAnchor.constraint(equalToConstant: 41),
            
            dayLabel.centerXAnchor.constraint(equalTo: dayView.centerXAnchor),
            dayLabel.centerYAnchor.constraint(equalTo: dayView.centerYAnchor),
            
            hourLabel.centerXAnchor.constraint(equalTo: hourView.centerXAnchor),
            hourLabel.centerYAnchor.constraint(equalTo: hourView.centerYAnchor),
            
            minuteLabel.centerXAnchor.constraint(equalTo: minuteView.centerXAnchor),
            minuteLabel.centerYAnchor.constraint(equalTo: minuteView.centerYAnchor),
            
            secondLabel.centerXAnchor.constraint(equalTo: secondView.centerXAnchor),
            secondLabel.centerYAnchor.constraint(equalTo: secondView.centerYAnchor),
        ])
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
