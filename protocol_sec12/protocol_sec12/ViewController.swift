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
        label.text = String(count)
     }
//画面遷移 次へボタン　performSegueー
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    //デリゲートメソッド使用
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        //自分をデリゲートに委任（）
        nextVC.delegate = self
    }
    
}
