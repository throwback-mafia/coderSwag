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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
