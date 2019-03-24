//
//  ViewController.swift
//  HealthyEats
//
//  Created by Mohit Deshpande on 4/23/16.
//  Copyright © 2016 Mohit Deshpande. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let healthyFoods = ["Apple", "Orange", "Pear", "Grapefruit", "Potato", "Tomato", "Leek", "Tangerine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return healthyFoods.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "healthyCell", for: indexPath)
        cell.textLabel?.text = healthyFoods[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(healthyFoods[indexPath.row])
    }

}

