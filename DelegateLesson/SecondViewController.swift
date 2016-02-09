//
//  SecondViewController.swift
//  DelegateLesson
//
//  Created by Ulrich Schwarz on 08.02.16.
//  Copyright © 2016 Ulrich Schwarz. All rights reserved.
//

import UIKit

// die Angabe von class macht die Delegate Methoden zu Pflicht-Methoden also nicht Optional
 protocol SecondViewControllerDelegate: class {
    
    func textSenden(text:String)
}

class SecondViewController: UIViewController {
    
    var delegate: SecondViewControllerDelegate?

    @IBOutlet weak var InputTextField: UITextField!
    
    @IBAction func SendText(sender: AnyObject) {
        print(InputTextField.text)
        self.delegate?.textSenden(InputTextField.text!)
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
