

import UIKit

class TableVC: UITableViewController {
  
  var currentDescription: String = ""
  
  
  let items: [iteme] = [
    iteme(name: "iteme 0", description: "description 0"),
    iteme(name: "iteme 1", description: "description 1"),
    iteme(name: "iteme 2", description: "description 2"),
    iteme(name: "iteme 3", description: "description 3")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.navigationBar.prefersLargeTitles = true
    
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
  
  
  override func tableView(_ tableView: UITableView,
                          cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier",
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
    
    if let destinationVC = segue.destination as? DetailVC {
      destinationVC.descriptionText = currentDescription
      
    }
  }
  
  
}
