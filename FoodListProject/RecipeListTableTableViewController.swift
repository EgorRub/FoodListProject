//
//  RecipeListTableTableViewController.swift
//  FoodListProject
//
//  Created by Kovalyov Dmitry on 01.08.2021.
//

import UIKit

class RecipeListTableTableViewController: UITableViewController {

    private var recipeArray = Recipe.getRecipes()
//    let editButton = UITableView
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        navigationItem.rightBarButtonItem = editButtonItem

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
        content.imageProperties.cornerRadius = tableView.rowHeight
        
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
