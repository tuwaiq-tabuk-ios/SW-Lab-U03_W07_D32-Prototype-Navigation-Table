//
//  TableViewController.swift
//  Prototype-Navigation-Table-MarzouqAlmukhlif
//
//  Created by Marzouq Almukhlif on 09/04/1443 AH.
//

import UIKit

class TableVC: UITableViewController {
  
  // MARK: - Property
  var currentDescription: String = ""
  let items = Item.array
  
  
  // MARK: - Life cycle
  
    override func viewDidLoad() {
        super.viewDidLoad()
      navigationController?.navigationBar.prefersLargeTitles = true
    }

  
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusable_cell", for: indexPath)
      cell.textLabel?.text = items[indexPath.row].name
      cell.detailTextLabel?.text = items[indexPath.row].description
     
        // Configure the cell...

        return cell
    }
    
  // MARK: - Navigation
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    currentDescription = items[indexPath.row].description
    performSegue(withIdentifier: "show_detail", sender: nil)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destinationVC = segue.destination as? DetailVC {
      destinationVC.descriptionText = currentDescription
    }
  }
  
}
