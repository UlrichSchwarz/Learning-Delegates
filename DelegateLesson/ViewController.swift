//
//  ViewController.swift
//  DelegateLesson
//
//  Created by Ulrich Schwarz on 08.02.16.
//  Copyright © 2016 Ulrich Schwarz. All rights reserved.
//
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    
  

    @IBOutlet weak var AusgabeLabel: UILabel!
    
    
    func textSenden(sender: UIViewController,text: String) {
        print("in Methode textSenden")
        AusgabeLabel.text = text
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
            var secondVC:SecondViewController = SecondViewController()
            secondVC = segue.destinationViewController as! SecondViewController
            secondVC.delegate = self
            
        

    }
  
   }

