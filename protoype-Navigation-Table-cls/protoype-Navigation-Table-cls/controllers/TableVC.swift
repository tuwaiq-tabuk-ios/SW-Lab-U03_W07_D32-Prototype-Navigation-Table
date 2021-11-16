//
//  TableVC.swift
//  protoype-Navigation-Table-cls
//
//  Created by روابي باجعفر on 09/04/1443 AH.
//

import UIKit


class TableVC: UITableViewController {
  
  let transportItems = ["Bus",
                        "Helicopter",
                        "Truck",
                        "Boat",
                        "Bicycle",
                        "Motorcycle",
                        "Plane",
                        "Train",
                        "Car",
                        "Scooter",
                        "Caravan"]
  
  
  let items: [Item] = [ Item(name: "Item 0", description: "Destription0"),
                        Item(name: "Item 1", description: "Destription1"),
                        Item(name: "Item 2", description: "Destription2"),
                        Item(name: "Item 3", description: "Destription3"),
                        Item(name: "Item 4", description: "Destription4"),
                        Item(name: "Item 5", description: "Destription5"),
                        Item(name: "Item 6", description: "Destription6")]
  var currentDescription : String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
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
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return items.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "reusable_cell", for: indexPath)
  
    cell.textLabel?.text = items[indexPath.row].name
    //let imageName = UIImage(named: transportItems[indexPath.row])
   // cell.imageView?.image = imageName
    
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
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the item to be re-orderable.
   return true
   }
   */
  
  /*
   // MARK: - Navigation*/
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    
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
