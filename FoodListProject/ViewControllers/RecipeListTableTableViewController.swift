//
//  RecipeListTableTableViewController.swift
//  FoodListProject
//
//  Created by Kovalyov Dmitry on 01.08.2021.
//

import UIKit

class RecipeListTableTableViewController: UITableViewController {

    private var recipeArray = Recipe.getRecipes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 95

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let recipe = recipeArray[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = recipe.title
        content.image = UIImage(named: recipe.titleForImage)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content

        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let recipeVC = segue.destination as? RecipeViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let recipe = recipeArray[indexPath.row]
        recipeVC.recipeArray = recipe
    }
}
