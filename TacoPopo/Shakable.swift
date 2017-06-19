//
//  Shakable.swift
//  TacoPopo
//
//  Created by Jason Bell on 19/06/2017.
//  Copyright © 2017 Cold Entertainment. All rights reserved.
//

import UIKit

protocol Shakable {}

extension Shakable where Self: UIView {
    func shake() {
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.05
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(anim, forKey: "position")
        
    }
}
