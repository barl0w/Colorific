//
//  ColorViewController.swift
//  Colorific
//
//  Created by Scott Barlow on 8/22/15.
//  Copyright © 2015 Scott Barlow. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        if self.view.backgroundColor == UIColor.orangeColor() {
            
            self.colorLabel.text = "Orange!"
            
        } else if self.view.backgroundColor == UIColor.redColor() {
            
            self.colorLabel.text = "Red!"
            
        } else if self.view.backgroundColor == UIColor.grayColor() {
            
            self.colorLabel.text = "Gray!"
            
        } else if self.view.backgroundColor == UIColor.greenColor() {
            
            self.colorLabel.text = "Green!"
            
        } else if self.view.backgroundColor == UIColor.purpleColor() {
            
            self.colorLabel.text = "Purple!"
            
        } else if self.view.backgroundColor == UIColor.yellowColor() {
            
            self.colorLabel.text = "Yellow!"
            
        }
        
    }
    

}
