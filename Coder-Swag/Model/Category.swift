//
//  Category.swift
//  Coder-Swag
//
//  Created by jithin abhishek on 21/07/20.
//  Copyright © 2020 jithin abhishek. All rights reserved.
//

import Foundation
struct Category{
    private(set) public var title:String
    private(set) public var imageName:String
    
    init(title:String,imageName:String){
        self.title=title
        self.imageName=imageName
    }
}
