//
//  IngredientCollectionViewCell.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 07/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class IngredientCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var checkedImageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func configCell(ingredient: Ingredient) {
        imageView.image = ingredient.image
        label.text = ingredient.name
        if ingredient.selected == true {
            checkedImageView.isHidden = false
        } else {
            checkedImageView.isHidden = true
        }
    }
}
