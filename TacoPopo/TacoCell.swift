//
//  TacoCell.swift
//  TacoPopo
//
//  Created by Jason Bell on 19/06/2017.
//  Copyright © 2017 Cold Entertainment. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakable {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }

}
