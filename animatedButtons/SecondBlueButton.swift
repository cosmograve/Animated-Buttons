//
//  BlueButton.swift
//  animatedButtons
//
//  Created by Алексей Авер on 03.07.2022.
//

import UIKit

class SecondBlueButton: UIButton {
    
    
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
        guard let titleFrame = self.titleLabel?.frame else {return}
         
        UIView.animate(withDuration: 0.7,
                       delay: 0,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 10,
                       options: .curveEaseInOut) {
            
            self.titleLabel?.frame = CGRect(x: titleFrame.origin.x + titleFrame.width / 2,
                                             y: titleFrame.origin.y,
                                             width: titleFrame.width * 2,
                                             height: titleFrame.height)
            
        }
    }
    
}
