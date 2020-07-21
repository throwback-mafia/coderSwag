//
//  CategoryCell.swift
//  Coder-Swag
//
//  Created by jithin abhishek on 19/07/20.
//  Copyright © 2020 jithin abhishek. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage:UIImageView!
    @IBOutlet weak var categoryTitle:UILabel!

    func updateViews(category:Category){
        categoryImage.image=UIImage(named: category.imageName)
        categoryTitle.text=category.title
    }

}
