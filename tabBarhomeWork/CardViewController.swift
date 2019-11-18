//
//  CardViewController.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 14.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    var fruit: Fruit!
    var cart: [Fruit] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "CartCell", bundle: nil), forCellWithReuseIdentifier: "CartCell")
        collectionView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          collectionView.reloadData()
      }
    
    @IBAction func didTapGoBack(_ sender: Any) {
        
        if let tabBar = tabBarController {
            if let tabBarControllers = tabBar.viewControllers {
                if let _ = tabBarControllers[1] as? FruitsViewController {
                    tabBar.selectedIndex = 1
                }
            }
        }
    }

}

extension CardViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cart.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CartCell", for: indexPath) as! CartCell
        let fruit = cart[indexPath.row]
        cell.update(data: fruit)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           let offset = CGFloat(5) //расстояние между ячейками, делаем из числа float
           let elementsPerRow = CGFloat(2) //элементов в ряду
           let totalOffsetSize = offset * (elementsPerRow + 1) //весь зазор
           
           var sideSize = (collectionView.frame.width - totalOffsetSize) / elementsPerRow
           sideSize = floor(sideSize) //округляем в меньшую сторону
           
           return CGSize(width: sideSize, height: sideSize)
       }
}
