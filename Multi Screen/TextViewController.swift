//
//  TextViewController.swift
//  Multi Screen
//
//  Created by MasterUNG on 11/3/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    
//    Explicit
    var myClass = MyClass()
    var textTime = Timer()
    
    
    var textNumberStrings = ["1":"One", "2":"Two", "3":"Three", "4":"Four", "5":"Five", "6":"Six", "7":"Seven", "8":"Eight", "9":"Nine", "10":"Ten"]
    
    var numberInt = 1
    
    

    
    
    
    @IBOutlet weak var textNumberLabel: UILabel!
    
    
    
    @IBAction func textPlayButton(_ sender: Any) {
        
        myClass.numberAInt = numberInt
        textTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TextViewController.textRunTime), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func textPauseButton(_ sender: Any) {
        textTime.invalidate()
    }
    
    
    
    @IBAction func textStopButton(_ sender: Any) {
        
        textNumberLabel.text = textNumberStrings["1"]
        numberInt = 1
        textTime.invalidate()
        
    }
    
    @objc func textRunTime() -> Void {
        
        if numberInt >= 10 {
//            pause
            textTime.invalidate()
        } else {
            
            numberInt = myClass.increaseNumber()
            textNumberLabel.text = textNumberStrings[String(numberInt)]
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
