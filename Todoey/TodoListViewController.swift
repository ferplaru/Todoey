//
//  ViewController.swift
//  Todoey
//
//  Created by Fernando Planes ruiz on 5/3/18.
//  Copyright © 2018 Fernando Planes ruiz. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK:- Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get a reusable cell for the index path that called
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        // Populate the cell with the corresponding text
        cell.textLabel?.text = itemArray[indexPath.row]
        
        // Return the cell as expected
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK:- TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            // Adds a checkmark to the selected cell (which is an accesory)
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        // So it doesn't stay selected. It sort of "flashes"
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }


}

