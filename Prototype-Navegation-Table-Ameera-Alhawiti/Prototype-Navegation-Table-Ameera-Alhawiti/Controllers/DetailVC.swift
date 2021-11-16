//
//  ViewController.swift
//  Prototype-Navegation-Table-Ameera-Alhawiti
//
//  Created by Ameera BA on 14/11/2021.
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

