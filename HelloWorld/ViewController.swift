//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ярослав on 15.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        startButton.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func startButtonTapped() {
        if currentLight == 0 {
            redLightView.alpha = 1.0
            greenLightView.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
            currentLight = 1
        } else if currentLight == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
            currentLight = 2
        } else if currentLight == 2 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
            currentLight = 0
        }
    }
}

