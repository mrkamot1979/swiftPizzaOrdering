//
//  ViewController.swift
//  PizzaOrdering
//
//  Created by Nino Rorudan on 9/28/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //this array houses the pizzas for sale.
    let pizzas:[String] = ["Pepperoni & Cheese", "Pineapple Pepperoni", "Ham & Cheese", "Tomato, Steak, Corn" ]
    
    //this function specifies how many rows the table will show
    //it returns pizzas.count; number of elements in the array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pizzas.count
    }
    
    //this function tells the table how to display the content of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = pizzas[indexPath.row]
        return cell
        
    }
    
    
    //Adding a checkmark beside a chosen Pizza
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType=UITableViewCellAccessoryType.none
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType=UITableViewCellAccessoryType.checkmark
        }
    }
    
    @IBOutlet weak var label: UILabel!
    

    @IBAction func mySwitch(_ sender: UISwitch)
    {
    
    }
    
    
    @IBAction func viewOrder(_ sender: Any)
    {
    
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

