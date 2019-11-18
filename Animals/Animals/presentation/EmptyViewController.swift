//
//  EmptyViewController.swift
//  Animals
//
//  Created by Stefan Rajilić on 05/11/2019.
//  Copyright © 2019 Stefan Rajilić. All rights reserved.
//

import UIKit

class EmptyViewController: UIViewController {

    @IBOutlet weak var enterTask: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        
        if (enterTask.text != "")
               {
                   todo.append(enterTask.text!)
                   enterTask.text = ""
               }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
