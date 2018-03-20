//
//  CategoryCell.swift
//  coderSwager
//
//  Created by Patrik Kemeny on 20/3/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateViews(category:Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }
}
