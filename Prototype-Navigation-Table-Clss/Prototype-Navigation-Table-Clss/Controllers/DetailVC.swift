//
//  ViewController.swift
//  Prototype-Navigation-Table-Clss
//
//  Created by عبدالعزيز البلوي on 09/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  @IBOutlet weak var descriptionLabel: UILabel!
    
    
   var descriptionText: String = ""
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  override func viewWillAppear(_ animated: Bool) {
      descriptionLabel.text = descriptionText
    } 

}

