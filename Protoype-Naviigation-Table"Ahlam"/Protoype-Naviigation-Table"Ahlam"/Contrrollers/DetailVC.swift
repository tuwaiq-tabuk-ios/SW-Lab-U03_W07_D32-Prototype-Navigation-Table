//
//  DetailVC.swift
//  Protoype-Naviigation-Table"Ahlam"
//
//  Created by ahlam  on 10/04/1443 AH.
//

import Foundation
import UIKit
class DetailVC: UIViewController {
  
  var descriptionText: String = ""
  
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  
  override func viewWillAppear(_ animated: Bool) {
    descriptionLabel.text = descriptionText
  }
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
