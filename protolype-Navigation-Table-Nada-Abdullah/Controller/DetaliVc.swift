//
//  DetaliVc.swift
//  protolype-Navigation-Table-Nada-Abdullah
//
//  Created by apple on 11/04/1443 AH.
//

import UIKit
class DetailVC: UIViewController {

  //@IBOutlet weak var labeltem: UILabel!
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  var descriptionText: String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewWillAppear(_ animated: Bool) {
    descriptionLabel.text = descriptionText
  }

}


