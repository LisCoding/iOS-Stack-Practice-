//
//  ViewController.swift
//  bListTest
//
//  Created by Liseth Cardozo Sejas on 9/20/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var userInputLabel: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var beatsList = ["study algos", "buy a dress"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    @IBAction func beastButtonWasPressed(_ sender: UIButton) {
        print("Pressed")
        let item = userInputLabel.text!
        beatsList.append(item)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return beatsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        cell?.textLabel?.text = beatsList[indexPath.row]
        print("are u workign")
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        beatsList.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    
}

