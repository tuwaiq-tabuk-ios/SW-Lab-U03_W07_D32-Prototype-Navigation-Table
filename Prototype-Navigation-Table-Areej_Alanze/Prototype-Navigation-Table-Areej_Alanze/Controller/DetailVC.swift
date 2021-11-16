//
//  ViewController.swift
//  Prototype-Navigation-Table-Areej_Alanze
//
//  Created by A A on 14/11/2021.
//

import UIKit

class DetailVC : UIViewController {
  
  var descriptionText : String = ""
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    descriptionLabel.text = descriptionText
  }
  
}

