//
//  BlueButton.swift
//  animatedButtons
//
//  Created by Алексей Авер on 03.07.2022.
//

import UIKit

class FirstBlueButton: UIButton {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupButton()
    }
    
    func setupButton() {
        if #available(iOS 15.0, *) {
            self.configuration = .none
        }
        self.layer.backgroundColor = UIColor("007AFF").cgColor
        self.layer.cornerRadius = 10
        self.setTitleColor(UIColor("FFFFFF"), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.titleLabel?.minimumScaleFactor = 0.5
        
        self.addTarget(self, action:
                        #selector(animateButton),
                       for: .touchUpInside)
    }
    
    @objc func animateButton() {
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.25,
                       initialSpringVelocity: 10,
                       options: .curveEaseInOut) {
            
            self.bounds = CGRect(x: self.bounds.origin.x - 24,
                                 y: self.bounds.origin.y,
                                 width: self.bounds.width + 48,
                                 height: self.bounds.height)
            
            self.titleLabel?.bounds = CGRect(x: self.bounds.origin.x - 12,
                                             y: self.bounds.origin.y,
                                             width: self.bounds.width + 12,
                                             height: self.bounds.height)
        }
    }
    
}
