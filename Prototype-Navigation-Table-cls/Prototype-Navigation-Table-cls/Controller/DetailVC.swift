//
//  ViewController.swift
//  Prototype-Navigation-Table-cls
//
//  Created by macbook air on 09/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  
  var descriptionText: String = ""

  @IBOutlet weak var descriptionLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
   descriptionLabel.text = descriptionText
 }
  
}


