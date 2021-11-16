//
//  ViewController.swift
//  Prototype-Navigation-Table-MahaNasser
//
//  Created by Maha S on 14/11/2021.
//

import UIKit

class DetailVC: UIViewController {
  
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  var descriptionText: String = ""
  
  
  override func viewWillAppear(_ animated: Bool) {
      descriptionLabel.text = descriptionText
    }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
  }


}

