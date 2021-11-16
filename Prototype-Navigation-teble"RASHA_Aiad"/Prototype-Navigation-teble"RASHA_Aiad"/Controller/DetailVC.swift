//
//  DetailVC.swift
//  Prototype-Navigation-teble"RASHA_Aiad"
//
//  Created by rasha  on 10/04/1443 AH.
//

import Foundation
import UIKit

class DetailVC: UIViewController {
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
       
       
      var descriptionText: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        descriptionLabel.text = descriptionText
      }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    


}
