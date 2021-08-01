//
//  RecipeViewController.swift
//  FoodListProject
//
//  Created by Егор on 01.08.2021.
//

import UIKit

class RecipeViewController: UIViewController {
    
    
    @IBOutlet weak var imageCover: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var labelText: UILabel!
    
    var recipeArray = Recipe.getRecipes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Соеденить и присвоить на mainStoryBoard.
//        imageCover.image = UIImage(named: recipeArray.titleForImage)
//        titleLabel.text = recipeArray.title
//        labelText.text = recipeArray.recipe
        
    }
}
