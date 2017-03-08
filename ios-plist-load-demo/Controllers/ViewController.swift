//
//  ViewController.swift
//  ios-plist-load-demo
//
//  Created by Eiji Kushida on 2017/03/08.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let helper = PlistHelper()
        helper.delegate = self
        helper.loadPlist("source")
    }
}

//MARK:-PlistDelegate
extension ViewController: PlistDelegate{
    
    func complated(result: [Info]) {
        
        _ = result.map {
            print($0.title, $0.url)
        }
    }
}

