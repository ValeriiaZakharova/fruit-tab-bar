//
//  FruitCell.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 15.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

protocol FruitCellDelegate {
    func didTapGoToCard(cell: FruitCell)
}

class FruitCell: UITableViewCell {
    
    var delegate: FruitCellDelegate?
    @IBOutlet weak var coverFruitImage: UIImageView!
    @IBOutlet weak var fruitNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func didTapAddToCard(_ sender: Any) {
        delegate?.didTapGoToCard(cell: self)
    }
}

extension FruitCell {
    
    func update(data: Fruit) {
        
        if let photo = data.photo {
            coverFruitImage.image = photo
        }
        coverFruitImage.layer.cornerRadius = coverFruitImage.frame.width / 2
        if let name = data.name {
            fruitNameLabel.text = name
        }
    }
}
