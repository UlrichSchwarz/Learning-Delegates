//
//  ViewController.swift
//  DelegateLesson
//
//  Created by Ulrich Schwarz on 08.02.16.
//  Copyright © 2016 Ulrich Schwarz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    
   var secondVC = SecondViewController()

    @IBOutlet weak var AusgabeLabel: UILabel!
    
     func textSenden(text: String) {
        print("in Methode textSenden")
        AusgabeLabel.text = "test"
    }
    
    override func viewWillAppear(animated: Bool) {
        secondVC.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        secondVC.delegate = self
    }

  
   }

