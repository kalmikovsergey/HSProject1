//
//  ViewController.swift
//  HSProject1
//
//  Created by Сергей Калмыков on 9/7/19.
//  Copyright © 2019 Сергей Калмыков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                pictures.append(item)
                print("1")
            }
        }
        
        print(pictures)
    }
    
}
