//
//  ViewController.swift
//  ProtoType-Navigation-Tabel-Aisha Ali
//
//  Created by Aisha Ali on 11/14/21.
//

import UIKit

class DetailVC: UIViewController {
  
  
  var descriptionText:String = ""
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  override func viewWillAppear(_ animated: Bool) {
    descriptionLabel.text = descriptionText

  }


}

