//
//  ViewController.swift
//  prototype_Navigation_Table_mohammedALatawi
//
//  Created by محمد العطوي on 09/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  
  var descriptionText: String = ""
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func viewWillAppear(_ animated: Bool) {
    descriptionLabel.text = descriptionText
  }
  
}

