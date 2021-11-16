

import UIKit

class DetailVC: UIViewController {

  var descriptionText: String = ""
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    descriptionLabel.text = descriptionText
    
  }
}
