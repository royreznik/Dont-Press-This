//
//  ViewController.swift
//  Timer
//
//  Created by roy reznik on 14/02/2017.
//  Copyright © 2017 roy reznik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimerLabel: UILabel!
    var best =  0
    
    var time = 0
    var timer = Timer()
    @IBOutlet weak var Record: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func TimerOn(_ sender: Any) {
        if(time>best)
        {
            
            best = time;
            Record.text = String(best)
        }
        time = 0
    }
    
    func action(){
        time += 1
        TimerLabel.text = String(time)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

