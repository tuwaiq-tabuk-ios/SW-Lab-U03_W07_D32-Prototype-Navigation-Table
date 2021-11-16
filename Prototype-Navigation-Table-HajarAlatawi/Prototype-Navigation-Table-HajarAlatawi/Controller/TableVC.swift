

import UIKit

class TableVC: UITableViewController {
  
  var currentDescription: String = ""
  
  var items: [Item] = [
    Item(name: "item 0", description: "Description 0"),
    Item(name: "item 1", description: "Description 1"),
    Item(name: "item 2", description: "Description 2"),
    Item(name: "item 3", description: "Description 3")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.navigationBar.prefersLargeTitles = true
    
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    
    return items.count
  }
  
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell
    = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier",
                                    for: indexPath)
    
    // Configure the cell...
    cell.textLabel?.text = items[indexPath.row].name
    
    return cell
    
  }
  
  
  // MARK: - Navigation
  
  override func tableView(_ tableView: UITableView,
                          didSelectRowAt indexPath: IndexPath) {
    
    currentDescription = items[indexPath.row].description
    
    performSegue(withIdentifier: "show_detail",
                 sender: nil)
  }
  
  
  override func prepare(for segue: UIStoryboardSegue,
                        sender: Any?) {
    
    //make a casting (as?)
    if let destinationVC = segue.destination as? DetailVC {
      destinationVC.descriptionText = currentDescription
      
    }
    
  }
}
