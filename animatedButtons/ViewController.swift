//
//  ViewController.swift
//  animatedButtons
//
//  Created by Алексей Авер on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstButton: FirstBlueButton?
    @IBOutlet weak var thirdButton: SecondBlueButton?
    @IBOutlet weak var secondButton: ThirdBlueButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton?.setTitle("First Button", for: .normal)
        secondButton?.setTitle("Second Button", for: .normal)
        thirdButton?.setTitle("Third Button", for: .normal)
        

    }

  
}
