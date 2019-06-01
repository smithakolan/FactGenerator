//
//  ViewController.swift
//  FunFacts
//
//  Created by Smitha Kolan on 5/31/19.
//  Copyright © 2019 Smitha Kolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var generateFactButton: UIButton!
    
    @IBOutlet weak var funFactLabel: UILabel!
    let factProvider = FactProvider()
    let backgroundColourProvider = BackgroundColourProvider()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.randomFact()
    }

    @IBAction func showFact() {
        
        funFactLabel.text = factProvider.randomFact()
        let randomColour = backgroundColourProvider.randomColour()
        view.backgroundColor = randomColour
        generateFactButton.tintColor = randomColour
        
        
    }
    
}

