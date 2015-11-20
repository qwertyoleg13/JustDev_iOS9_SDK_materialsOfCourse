//
//  ViewController.swift
//  simpleTV
//
//  Created by Игорь on 18.11.15.
//  Copyright © 2015 Ihor Malovanyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let arrayOfLessons = ["Lesson 1", "Lesson 2", "Lesson 3", "Lesson 4", "Lesson 5", "Lesson 6", "Lesson 7",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfLessons.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellID = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath)
        
        cell.textLabel?.text = arrayOfLessons[indexPath.row]
        cell.imageView?.image = UIImage(named: "Swift")
        
        return cell
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}

