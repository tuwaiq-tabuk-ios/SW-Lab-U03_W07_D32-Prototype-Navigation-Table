//
//  ViewController.swift
//  Prototype-Navigation-Table-"Bushra_Oudah"
//
//  Created by Bushra alatwi on 09/04/1443 AH.
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

