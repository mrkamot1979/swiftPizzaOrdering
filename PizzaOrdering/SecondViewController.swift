//
//  SecondViewController.swift
//  PizzaOrdering
//
//  Created by Nino Rorudan on 10/11/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
        
        
        myTextView.text = order
        myLabel.text = "Order:" + String(totalPrice)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
