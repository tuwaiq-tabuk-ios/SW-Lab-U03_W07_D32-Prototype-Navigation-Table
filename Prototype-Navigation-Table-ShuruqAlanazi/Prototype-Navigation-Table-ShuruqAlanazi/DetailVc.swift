//
//  ViewController.swift
//  Prototype-Navigation-Table-ShuruqAlanazi
//
//  Created by Shorouq AlAnzi on 09/04/1443 AH.
//

import UIKit

class DetailVc: UIViewController {

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

