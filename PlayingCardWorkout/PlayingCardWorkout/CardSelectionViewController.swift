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
    var cardUIImages: [UIImage] = Deck.getAllCardUIImages()
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        startTimer()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cardUIImages.randomElement() ?? UIImage(named: "AS")
    }

    @IBAction func stopButtonPressed(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }

}
