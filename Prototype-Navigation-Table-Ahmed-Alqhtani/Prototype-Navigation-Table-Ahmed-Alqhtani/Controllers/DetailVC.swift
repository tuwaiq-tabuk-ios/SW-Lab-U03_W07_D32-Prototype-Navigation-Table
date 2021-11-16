//
//  DetailVC.swift
//  Prototype-Navigation-Table-Ahmed-Alqhtani
//
//  Created by Ahmed awadh alqhtani on 10/04/1443 AH.
//

import UIKit

class DetailVC: UIViewController {
  @IBOutlet weak var descriptionLabel: UILabel!
  
  var descriptionText: String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  override func viewWillAppear(_ animated: Bool) {
      descriptionLabel.text = descriptionText
    }
  }
  


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


