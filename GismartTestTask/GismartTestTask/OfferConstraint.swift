//
//  OfferSetUpConstr.swift
//  GismartTestTask
//
//  Created by Stas Dashkevich on 29.06.22.
//

import Foundation
import UIKit

extension OfferViewController {
    
    func setup(){
        
        buttonOffer.addTarget(self, action: #selector(offerTaped), for: .touchUpInside)
        
        view.addSubview(xMarkButton)
        view.addSubview(secondView)
        view.addSubview(bottomStackView)
        view.insertSubview(timerStackView, at: 0)
        view.insertSubview(pocketSong, at: 0)
        view.addSubview(musicFans)
        view.addSubview(discount)
        view.insertSubview(buttonOffer, at: 0)
        view.addSubview(lastChance)
        view.insertSubview(imageMusic, at: 0)
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        timerStackView.translatesAutoresizingMaskIntoConstraints = false
        imageMusic.translatesAutoresizingMaskIntoConstraints = false
        let constraints: [NSLayoutConstraint]
        
        let constraintsForBigDisplay = [
            imageMusic.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageMusic.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageMusic.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            
            lastChance.bottomAnchor.constraint(equalTo: discount.topAnchor, constant: -20),
            lastChance.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            lastChance.centerXAnchor.constraint(equalTo: timerStackView.centerXAnchor),
            
            discount.bottomAnchor.constraint(equalTo: musicFans.topAnchor,constant: -20),
            discount.centerXAnchor.constraint(equalTo: lastChance.centerXAnchor),
            
            musicFans.bottomAnchor.constraint(equalTo: timerStackView.topAnchor,constant: -25),
            musicFans.centerXAnchor.constraint(equalTo: discount.centerXAnchor),

            bottomStackView.topAnchor.constraint(equalTo: buttonOffer.bottomAnchor, constant: 30),
            bottomStackView.centerXAnchor.constraint(equalTo: buttonOffer.centerXAnchor),
            
            buttonOffer.topAnchor.constraint(equalTo: pocketSong.bottomAnchor, constant: 25),
            buttonOffer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -95),
            
            pocketSong.topAnchor.constraint(equalTo: timerStackView.bottomAnchor, constant: 50),
            pocketSong.centerXAnchor.constraint(equalTo: buttonOffer.centerXAnchor),
            
            timerStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -95),
            timerStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            xMarkButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            xMarkButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            xMarkButton.widthAnchor.constraint(equalToConstant: 40),
            xMarkButton.heightAnchor.constraint(equalToConstant: 40)
            
        ]
        
        let constraintsForSmallDisplay = [
            imageMusic.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageMusic.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageMusic.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            
            lastChance.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            lastChance.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            discount.topAnchor.constraint(equalTo: lastChance.bottomAnchor,constant: 12),
            discount.centerXAnchor.constraint(equalTo: lastChance.centerXAnchor),
            
            musicFans.topAnchor.constraint(equalTo: discount.bottomAnchor,constant: 8),
            musicFans.centerXAnchor.constraint(equalTo: discount.centerXAnchor),

            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomStackView.centerXAnchor.constraint(equalTo: buttonOffer.centerXAnchor),
            
            buttonOffer.bottomAnchor.constraint(equalTo: bottomStackView.topAnchor, constant: -20),
            buttonOffer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            pocketSong.bottomAnchor.constraint(equalTo: buttonOffer.topAnchor, constant: -10),
            pocketSong.centerXAnchor.constraint(equalTo: buttonOffer.centerXAnchor),
            
            timerStackView.bottomAnchor.constraint(equalTo: pocketSong.topAnchor, constant: -16),
            timerStackView.topAnchor.constraint(equalTo: musicFans.bottomAnchor, constant: 20),
            timerStackView.centerXAnchor.constraint(equalTo: pocketSong.centerXAnchor),
            
            xMarkButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            xMarkButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            xMarkButton.widthAnchor.constraint(equalToConstant: 40),
            xMarkButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        if Constants().isBig {
            constraints = constraintsForBigDisplay
        } else {
            constraints = constraintsForSmallDisplay
        }
        
        NSLayoutConstraint.activate(constraints)
    }
}
