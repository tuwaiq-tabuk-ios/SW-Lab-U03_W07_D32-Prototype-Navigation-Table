//
//  ViewController.swift
//  ProtoType-Navigation-Table-"RessamMohammed"
//
//  Created by Ressam Al-Thebailah on 09/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  
  @IBOutlet weak var descripitionLabel: UILabel!
  
  var descripitionText :String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    descripitionLabel.text = descripitionText
  }
}

