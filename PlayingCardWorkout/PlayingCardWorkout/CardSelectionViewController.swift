//
//  CardSelectionViewController.swift
//  PlayingCardWorkout
//
//  Created by Scott Enriquez on 7/7/20.
//  Copyright © 2020 Scott Enriquez. All rights reserved.
//

import UIKit

class CardSelectionViewController: UIViewController {
     
    var timer: Timer!
    var cards: [UIImageView] = []
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView = cards.randomElement()
    }

    @IBAction func stopButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
    }

    @IBAction func rulesButtonPressed(_ sender: UIButton) {
    }
}
