//
//  CartCell.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 18.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

class CartCell: UICollectionViewCell {
    
    @IBOutlet weak var fruitImage: UIImageView!
    @IBOutlet weak var fruitNameLabel: UILabel!
    
    func update(data: Fruit) {
        if let photo = data.photo {
            fruitImage.image = photo
        }
        if let name = data.name {
            fruitNameLabel.text = name
        }
    }
}
