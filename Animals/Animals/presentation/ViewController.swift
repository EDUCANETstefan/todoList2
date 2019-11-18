//
//  ViewController.swift
//  Animals
//
//  Created by Stefan Rajilić on 05/11/2019.
//  Copyright © 2019 Stefan Rajilić. All rights reserved.
//

import UIKit

let todo = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
     
    }

    
    @IBAction func bOpenEmptyView(_ sender: Any) {
        performSegue(withIdentifier: "ssEmptyView", sender: nil)
    }
    
    @IBOutlet weak var tvAnimals: UITableView!
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = todo[indexPath.item]
        
        return cell
    }
    
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            todo.remove(at: indexPath.row)
            tvAnimals.reloadData()
            
        }
        
        override func viewDidAppear(_ animated: Bool) {
            myTableView.reloadData()
        }
        
    }
}

