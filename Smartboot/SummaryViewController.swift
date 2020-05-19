//
//  SummaryViewController.swift
//  Smartboot
//
//  Created by Betty Zhang on 4/29/20.
//  Copyright © 2020 UD Spin-In. All rights reserved.
//

import UIKit
import Foundation

class SummaryViewController: UIViewController {
   
    @IBAction func BackHome(_ sender: Any) {
        self.performSegue(withIdentifier: "BackHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


}
