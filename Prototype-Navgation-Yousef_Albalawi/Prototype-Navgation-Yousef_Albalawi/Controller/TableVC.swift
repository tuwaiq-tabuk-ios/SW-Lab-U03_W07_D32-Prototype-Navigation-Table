//
//  TableVC.swift
//  Prototype-Navgation-Yousef_Albalawi
//
//  Created by Yousef Albalawi on 09/04/1443 AH.
//

import UIKit

class TableVC: UITableViewController {
  

  //var array = ["Item 1","Item 2 ","Item 3","Item 4","Item 5","Item 6","Item 7"]
  
  //  let items : [String] = ["Item zero",
  //                          "Item one",
  //                          "Item two",
  //                          "Item three"]
  
  let items : [Item] = [
    Item(name:"Item 0", description: "Description 0"),
    Item(name:"Item 1", description: "Description 1"),
    Item(name:"Item 2", description: "Description 2"),
    Item(name:"Item 3", description: "Description3")
  ]
 
  var currentDecription:String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }
  
  
  
  // MARK: - Table view data source
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
 currentDecription = items[indexPath.row].description
    
    
    performSegue(withIdentifier: "show_detail", sender: nil)
    
  }
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
    if let destinationVC = segue.destination as? DetailVC {
      destinationVC.descriptionText = currentDecription
    }
  }
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return items.count
  }
  
  
  
  
  override func tableView(
    _ tableView: UITableView,
    cellForRowAt indexPath: IndexPath)
  -> UITableViewCell {
    let cell = tableView
      .dequeueReusableCell(withIdentifier: "resuable_cell", for: indexPath)
    
    // Configure the cell...
    cell .textLabel?.text = items[indexPath.row].name 
    cell .detailTextLabel?.text = items[indexPath.row].description
    return cell
  }
  
 
  
  // MARK: - Navigation
  

  
}
