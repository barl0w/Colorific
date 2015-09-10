//
//  ViewController.swift
//  Colorific
//
//  Created by Scott Barlow on 8/21/15.
//  Copyright © 2015 Scott Barlow. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var selectedColor : UIColor?
    
    let colors : [UIColor] = [UIColor.orangeColor(), UIColor.redColor(), UIColor.grayColor(), UIColor.greenColor(), UIColor.purpleColor(), UIColor.yellowColor()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.backgroundColor = self.colors[indexPath.row]
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.colors.count
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedColor = self.colors[indexPath.row]
        
        performSegueWithIdentifier("toColors", sender: self)
        
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toColors" {
            
            segue.destinationViewController.view.backgroundColor = self.selectedColor
            
        }
        
    }


}

