//
//  ViewController.swift
//  Prototype-Navigation-Table-arwa balawi
//
//  Created by arwa balawi on 09/04/1443 AH.
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

