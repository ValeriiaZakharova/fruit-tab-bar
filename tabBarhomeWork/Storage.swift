//
//  Storage.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 14.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import Foundation
import UIKit

class Storage {
    
    func makeCategories() -> [CategoryOfFruits] {
        
        let category1 = makeCitrusCategory()
        let category2 = makeStoneCategory()
        let category3 = makeTropicalCategory()
        let category4 = makeBerriesCategory()
        let category5 = makeMelonsCotegory()
    
        return [category1, category2, category3, category4, category5]
    }
    
    func makeCitrusCategory() -> CategoryOfFruits {
        
        let fruit1 = Fruit(name: "Orange", photo: UIImage(named: "orange"))
        let fruit2 = Fruit(name: "Grapefruit", photo: UIImage(named: "grapefruit"))
        let fruit3 = Fruit(name: "Mandarin", photo: UIImage(named: "mandarin"))
        let fruit4 = Fruit(name: "Lime", photo: UIImage(named: "lime"))
        
        let category = CategoryOfFruits(name: "CITRUS", photo: UIImage(named: "citrus"), fruits: [fruit1, fruit2, fruit3, fruit4])
        return category
    }
    
    func makeStoneCategory() -> CategoryOfFruits {
        
        let fruit1 = Fruit(name: "Apricot", photo: UIImage(named: "apricot"))
        let fruit2 = Fruit(name: "Nectarine", photo: UIImage(named: "nictarine"))
        let fruit3 = Fruit(name: "Peach", photo: UIImage(named: "peach"))
        let fruit4 = Fruit(name: "Plum", photo: UIImage(named: "plum"))

        let category = CategoryOfFruits(name: "STONE FRUIT", photo: UIImage(named: "stonefruit"), fruits: [fruit1, fruit2, fruit3, fruit4])
        return category
    }
    
    func makeTropicalCategory() -> CategoryOfFruits {
        
        let fruit1 = Fruit(name: "Bananas", photo: UIImage(named: "bananas"))
        let fruit2 = Fruit(name: "Mangoes", photo: UIImage(named: "mangoes"))
        
        let category = CategoryOfFruits(name: "TROPICAL", photo: UIImage(named: "tropical"), fruits: [fruit1, fruit2])
        return category
    }
    
    func makeBerriesCategory() -> CategoryOfFruits {
        
        let fruit1 = Fruit(name: "Strawberries", photo: UIImage(named: "strawberries"))
        let fruit2 = Fruit(name: "Raspberries", photo: UIImage(named: "raspberries"))
        let fruit3 = Fruit(name: "Blueberries", photo: UIImage(named: "blueberries"))
        let fruit4 = Fruit(name: "Kiwifruit", photo: UIImage(named: "kiwifruit"))
        let fruit5 = Fruit(name: "Passionfruit", photo: UIImage(named: "passionfruit"))
        
        let category = CategoryOfFruits(name: "BERRIES", photo: UIImage(named: "berries"), fruits: [fruit1, fruit2, fruit3, fruit4, fruit5])
        return category
    }
    
    func makeMelonsCotegory() -> CategoryOfFruits {
        
        let fruit1 = Fruit(name: "Watermelons", photo: UIImage(named: "watermelons"))
        let fruit2 = Fruit(name: "Rockmelons ", photo: UIImage(named: "rockmelons"))
        let fruit3 = Fruit(name: "Honeydew melons", photo: UIImage(named: "honeydew melons"))
        
        let category = CategoryOfFruits(name: "MELONS", photo: UIImage(named: "melons"), fruits: [fruit1, fruit2, fruit3])
        return category
    }
}
