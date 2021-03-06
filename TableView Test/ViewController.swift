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
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "1st section"
        } else{
            return "2nd section"
        }
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("section = \(indexPath.section)row = \(indexPath.row)")
        let myAlert = UIAlertController(title: "Date", message: "Text", preferredStyle: .alert)
        //세번째 인자를 클로져 사용
        //후행 클로져(Trailing Closure)
        let okAction = UIAlertAction(title: "확인", style: .default){ (action: UIAlertAction) -> Void in
            
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: { (action: UIAlertAction) -> Void in })
        
        let testAction = UIAlertAction(title: "Section Row Seclected", style: .default, handler: nil)
        
        myAlert.addAction(testAction)
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        
        present(myAlert, animated: true, completion: nil)
    }
    
    //row의 height 조절
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    
}




