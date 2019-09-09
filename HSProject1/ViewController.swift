//
//  ViewController.swift
//  HSProject1
//
//  Created by Сергей Калмыков on 9/7/19.
//  Copyright © 2019 Сергей Калмыков. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        print(path)
        let items = try! fm.contentsOfDirectory(atPath: path)
      print(items)
        for item in items {
            print(item)
            if item.hasPrefix("nssl"){
                pictures.append(item)
                
            }
        }
        
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
}
