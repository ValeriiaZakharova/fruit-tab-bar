//
//  CategorisOfFruit.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 14.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import Foundation
import UIKit

class CategoryOfFruits {
    
    var name: String?
    var photo: UIImage?
    var fruits: [Fruit] = []
    
    init(name: String?, photo: UIImage?, fruits: [Fruit]) {
        self.name = name
        self.photo = photo
        self.fruits = fruits
        self.fruits = fruits
    }
}
