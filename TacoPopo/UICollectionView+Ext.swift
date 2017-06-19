//
//  UICollectionView+Ext.swift
//  TacoPopo
//
//  Created by Jason Bell on 19/06/2017.
//  Copyright © 2017 Cold Entertainment. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
}

    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
    
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("could not dequeue cell with Identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
    
}

extension UICollectionViewCell: ReusableView {}

