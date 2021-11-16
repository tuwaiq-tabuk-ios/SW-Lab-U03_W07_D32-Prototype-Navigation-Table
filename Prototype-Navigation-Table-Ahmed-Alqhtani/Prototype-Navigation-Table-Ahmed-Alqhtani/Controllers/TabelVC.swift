//
//  TabelVC.swift
//  Prototype-Navigation-Table-Ahmed-Alqhtani
//
//  Created by Ahmed awadh alqhtani on 09/04/1443 AH.
//

import UIKit

class TabelVC: UITableViewController {
  let items: [Item] = [
    Item(name: "item zero", description: "Description item zero"),
    Item(name: "item one", description: "Description item one"),
    Item(name: "item two", description: "Description item two"),
    Item(name: "item three", description: "Description item three")
  ]
  
  var currentDescription: String = ""
  
    override func viewDidLoad() {
        super.viewDidLoad()
      navigationController?.navigationBar.prefersLargeTitles = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
      
    }

    override func tableView(_ tableView: UITableView,
    numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
      return items.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView
          .dequeueReusableCell(withIdentifier: "reusable_cell",
                               for: indexPath)

      cell.textLabel?.text =  items[indexPath.row].name
      //cell.detailTextLabel?.text =  items[indexPath.row].description

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 */

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
    
  //verride to support conditional rearranging of the table view.
    //override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
      //   Return false if you do not want the item to be re-orderable.
     //   return true
   // }
  

   
    //MARK: - Navigation
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    currentDescription = items[indexPath.row].description
    
    performSegue(withIdentifier: "show_detail", sender: nil)
  }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
      if let destinationVC = segue.destination as? DetailVC {
        destinationVC.descriptionText = currentDescription
      } 
    }
   

}

