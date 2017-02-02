//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Marc Turley on 02/02/2017.
//  Copyright © 2017 Marc Turley. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var tasknametextfield: UITextField!
    @IBOutlet weak var importantswitch: UISwitch!

    var PreviousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //create a task from the outlet information
        
        let task = Task()
        task.name = tasknametextfield.text!
        task.important = importantswitch.isOn
        
        //add new task to array in previous view controller
        
        PreviousVC.tasks.append(task)
        PreviousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }

}
