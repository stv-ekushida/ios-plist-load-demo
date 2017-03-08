//
//  PlistHelper.swift
//  ios-plist-load-demo
//
//  Created by Eiji Kushida on 2017/03/08.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

protocol PlistDelegate {
    func complated(result: [Info])
}

final class PlistHelper {
    
    var delegate: PlistDelegate!
    var result: [Info] = []
    
    /// plistを読み込むサンプル
    func loadPlist(_ forResource: String) {
        
        let path = Bundle.main.path(forResource: forResource, ofType: "plist")
        let plist = NSArray(contentsOfFile: path!) as! [[String:String]]
        
        for source in plist {
                        
            let info = Info(title: source["item"] ?? "-", url: source["url"] ?? "-")
            result.append(info)
        }        
        delegate.complated(result: result)
    }
}
