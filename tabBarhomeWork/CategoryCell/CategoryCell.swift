//
//  CategoryCell.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 15.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var coverCategoryImage: UIImageView!
    @IBOutlet weak var cotegoryNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

extension CategoryCell {
    
    func update(category: CategoryOfFruits) {
        
        coverCategoryImage.image = category.photo
        coverCategoryImage.layer.cornerRadius = coverCategoryImage.frame.width / 2
        cotegoryNameLabel.text = category.name
    }
}
