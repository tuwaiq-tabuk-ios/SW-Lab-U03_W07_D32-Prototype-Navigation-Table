//
//  ViewController.swift
//  Prototype-Navgation-Yousef_Albalawi
//
//  Created by Yousef Albalawi on 09/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  var descriptionText: String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    descriptionLabel.text = descriptionText
  }
}




