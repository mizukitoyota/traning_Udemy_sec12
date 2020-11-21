//
//  ViewController.swift
//  protocol_sec12
//
//  Created by Training on 2020/11/21.
//  Copyright © 2020 training. All rights reserved.
//

import UIKit
//委任先、プロトコル宣言
class ViewController: UIViewController,CatchProtocol {
    
    @IBOutlet weak var label: UILabel!
    
    var count = Int(0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func catchData(count: Int) {
         
     }

    @IBAction func next(_ sender: Any) {
        
    }
    
}
