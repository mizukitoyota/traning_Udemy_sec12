//
//  NextViewController.swift
//  protocol_sec12
//
//  Created by Training on 2020/11/21.
//  Copyright © 2020 training. All rights reserved.
//プロトコル

import UIKit
//仕様書
protocol CatchProtocol {
    //規則決める,メソッドしてい、
    func catchData(count:Int)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    //nilなら処理続かない
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func plusAction(_ sender: Any) {
        count = count + 1
        //キャスト
        label.text = String(count)
    }
    @IBAction func back(_ sender: Any) {
        //上部プロトコル、デリゲートメソッドを任せたクラスで発動させる　表示された数字が入る
        delegate?.catchData(count: count)
        //閉じる
        dismiss(animated: true, completion: nil)
    }
}
