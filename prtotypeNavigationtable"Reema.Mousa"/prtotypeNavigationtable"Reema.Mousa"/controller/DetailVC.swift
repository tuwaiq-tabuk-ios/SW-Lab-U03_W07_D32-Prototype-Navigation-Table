//
//  ViewController.swift
//  prtotypeNavigationtable"Reema.Mousa"
//
//  Created by Reema Mousa on 09/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  var descriptionText: String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    navigationController?.navigationBar.prefersLargeTitles = true
    
  }
    override func viewWillAppear(_ animated: Bool){
    descriptionLabel.text = descriptionText
    
  }
}

