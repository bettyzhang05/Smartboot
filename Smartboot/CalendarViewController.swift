//
//  CalendarViewController.swift
//  Smartboot
//
//  Created by Betty Zhang on 5/1/20.
//  Copyright © 2020 UD Spin-In. All rights reserved.
//
import UIKit
import FSCalendar

class CalendarViewController: UIViewController, FSCalendarDelegate {
    @IBOutlet var calendar: FSCalendar!
    @IBAction func BackButton(_ sender: Any) {
        self.performSegue(withIdentifier: "BackHome", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


}
