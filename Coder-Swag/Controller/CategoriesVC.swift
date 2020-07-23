//
//  ViewController.swift
//  Coder-Swag
//
//  Created by jithin abhishek on 19/07/20.
//  Copyright © 2020 jithin abhishek. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var categoryTable:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource=self
        categoryTable.delegate=self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell=tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
                return cell
        
        }
        else{
            return CategoryCell()
        }
    }
    
}

