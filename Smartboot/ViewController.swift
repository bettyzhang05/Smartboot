//
//  ViewController.swift
//  Smartboot
//
//  Created by Betty Zhang on 4/17/20.
//  Copyright © 2020 UD Spin-In. All rights reserved.
//

import UIKit
import Charts
class ViewController: UIViewController {
    @IBOutlet weak var linechart: LineChartView!
    
    @IBAction func scroller(_ sender: Any) {
        print("clicked")
    }
    @IBAction func SummaryButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ShowSummary", sender: self)
    }
        
    @IBAction func CalendarButton(_ sender: Any) {
            self.performSegue(withIdentifier: "ShowCalendar", sender: self)
    }
    
    @IBAction func QuestionButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ShowQuestions", sender: self)
        
    }
    @IBAction func ContactButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ShowContact", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.viewDidLoad()
           // Do any additional setup after loading the view.
        let dollars1 = [20.0, 3.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
           let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
           // 1 - creating an array of data entries
           var yValues : [ChartDataEntry] = [ChartDataEntry]()

           for i in 0 ..< months.count {
               yValues.append(ChartDataEntry(x: Double(i + 1), y: dollars1[i]))
           }

           let data = LineChartData()
           let ds = LineChartDataSet(entries: yValues, label: "Months")

           data.addDataSet(ds)
           self.linechart.data = data
           let ll = ChartLimitLine(limit: 10.0, label: "Target")
           self.linechart.rightAxis.addLimitLine(ll)

    }


}

