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
    
    
    func meldung(text: String) {
        AusgabeLabel.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var secondVC = SecondViewController()
        secondVC = segue.destinationViewController as! SecondViewController
        secondVC.delegate = self
        
        
        
    }
    
}

