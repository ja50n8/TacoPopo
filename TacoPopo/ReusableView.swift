//
//  ReusableView.swift
//  TacoPopo
//
//  Created by Jason Bell on 19/06/2017.
//  Copyright © 2017 Cold Entertainment. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
