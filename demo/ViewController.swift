//
//  ViewController.swift
//  demo
//
//  Created by Philip George on 14/05/18.
//  Copyright © 2018 Philip George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i = 0
    var flag = 0
    
    @IBOutlet weak var display: UILabel! //this is a global variable for this class. it can be accessed anywhere inside this class.
    
    
    @IBAction func addpressed(_ sender: Any)
    {
    // when add is pressed.
        
        if(flag == 1)
        {
            flag = 0
        }
        
        if(i==100)
        {
            i = 0
            display.text = "\(i)"

            flag = 1
        }
            
        else if (i != 100 && flag == 0)
            
        {
        i = i+20
        
        display.text = "\(i)"
        }
        //here, "\()" is called as the escape character. its used to include variable values inside strings. So that we don't need to convert the integer into a string or vice versa.
        
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        display.text = "0" //initialising the text of the label to zero everytime the app is launched.
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

