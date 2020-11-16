//
//  ViewController.swift
//  TapGestureTutorial
//
//  Created by Akshansh Thakur on 16/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var globeImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Declare Tap Gesture
        let tapGesture = UITapGestureRecognizer()
        
        // Add target and action to the tap gesture.
        // Target is the one who will implement the action method.
        tapGesture.addTarget(self, action: #selector(userTapped(_:)))
                
        // Add tap gesture to the view that you want to perform tap on.
        globeImage.addGestureRecognizer(tapGesture)
        
        // Enable user Interaction in case this is a label, image etc.
        globeImage.isUserInteractionEnabled = true
        
    }
    
    // An Objective C method that gets triggered when tap occurs in a view that tap gesture is added to.
    @objc func userTapped(_ sender: UITapGestureRecognizer) {
        if globeImage.alpha == 1 {
            UIView.animate(withDuration: 0.5) {
                self.globeImage.alpha = 0.3
            }
        } else {
            UIView.animate(withDuration: 0.5) {
                self.globeImage.alpha = 1.0
            }
        }
    }


}

