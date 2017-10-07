//
//  ViewController.swift
//  PizzaOrdering
//
//  Created by Nino Rorudan on 9/28/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit

//variables are placed here so that they are made "global"
var totalPrice:Int = 0
var oder:String = ""

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //this array houses the pizzas for sale.
    let pizzas:[String] = ["Pepperoni & Cheese", "Pineapple Pepperoni", "Ham & Cheese", "Tomato, Steak, Corn" ]
    
    //this array holds the selected pizzas, each zero represents the pizza specified in the pizzas array
    //if the pizza is not selected, it is shown as "0", if it is selected, it will be "1".
    var selectedPizzas:[Int] = [0, 0, 0, 0]
    
    //variable used to store if the User has selected Delivery
    var hasSelectedDelivery:Bool = true
    
    //array that holds Pizza pices
    var pizzaPrices:[Int] = [9, 6, 7, 8]
    

    
//Creating the table view using the function tableView
    
    //this function specifies how many rows the table will show
    //it returns pizzas.count; number of elements in the array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pizzas.count
    }
    
    //this function tells the table how to display the content of each cell
    //it returns "cell"
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
            selectedPizzas[indexPath.row] = 0 //this line deselects the pizza by making its value 0
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType=UITableViewCellAccessoryType.checkmark
            selectedPizzas[indexPath.row] = 1  //this line essentially selects the pizza and changes it from 0 to 1
        }
    }
    
    @IBOutlet weak var label: UILabel! //name of the label that shows "DELIVERY: YES" or "DELIVERY: NO"
    

    @IBAction func mySwitch(_ sender: UISwitch)
    {
        //code below checks to see if the User has selected delivery or not
        if sender.isOn == true
        {
            hasSelectedDelivery = true
            label.text = "DELIVERY: YES"
            
        }
        else
        {
            hasSelectedDelivery = false
            label.text = "DELIVERY: NO"
        }
    }
    
    
    @IBAction func viewOrder(_ sender: Any)
    {
        for i in selectedPizzas
        {
            if i == 1
            {
                totalPrice += pizzaPrices[i]
            }
        }
        print(selectedPizzas)
        print(totalPrice)
        
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

