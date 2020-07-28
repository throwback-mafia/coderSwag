//
//  ProductVC.swift
//  Coder-Swag
//
//  Created by jithin abhishek on 26/07/20.
//  Copyright © 2020 jithin abhishek. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products=[Product]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource=self
        productsCollection.delegate=self

        // Do any additional setup after loading the view.
    }
    

    func initProducts(category:Category){
        products=DataService.instance.getProducts(forCategoryTitle: category.title)
    }
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath)as? ProductCell{
            
            let product=products[indexPath.row]
            cell.updateViews(product:product)
            return cell
        }
        return ProductCell()
       }
    
}
