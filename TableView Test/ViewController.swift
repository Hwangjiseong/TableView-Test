//
//  ViewController.swift
//  TableView Test
//
//  Created by D7703_02 on 2018. 4. 30..
//  Copyright © 2018년 D7703_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var data = ["외계인1", "외계인2", "외계인3"]
    var subDate = ["one","two","three"]
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: indentifier, for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = "section = \(indexPath.section) row=\(indexPath.row)"
        
        let myImg = UIImage(named:"frame\(indexPath.row+1).png")
        cell.imageView?.image = myImg
        
        return cell
    }
    


}

