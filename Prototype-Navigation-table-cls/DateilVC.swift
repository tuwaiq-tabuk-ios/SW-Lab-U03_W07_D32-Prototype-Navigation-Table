//
//  ViewController.swift
//  Prototype-Navigation-table-cls
//
//  Created by Atheer abdullah on 09/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  
  var descriptionText : String = ""
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func viewWillAppear(_ animated: Bool) {
     descriptionLabel.text = descriptionText
      
    }
}

