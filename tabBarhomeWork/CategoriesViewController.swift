//
//  CategoriesViewController.swift
//  tabBarhomeWork
//
//  Created by Valeriia Zakharova on 14.11.2019.
//  Copyright © 2019 valeriikaaa. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var categories: [CategoryOfFruits] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categories = Storage().makeCategories()
        tableView.register(UINib(nibName: "CategoryCell", bundle: nil), forCellReuseIdentifier: "CategoryCell")
        tableView.reloadData()
    }
}

extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell
        cell.update(category: categories[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let tabBar = tabBarController {
            if let tabBarControllers = tabBar.viewControllers {
                if let fruitsVc = tabBarControllers[1] as? FruitsViewController {
//                    a.cart.fruits.append(// fruit)
                    fruitsVc.category = categories[indexPath.row]
                    tabBar.selectedIndex = 1
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}



    
    
    

