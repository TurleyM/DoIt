//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Marc Turley on 02/02/2017.
//  Copyright © 2017 Marc Turley. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskLabel: UILabel!

    
    var task = Task()
    var PreviousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }

    }
    
    @IBAction func completeTapped(_ sender: Any) {
        PreviousVC.tasks.remove(at: PreviousVC.selectedIndex)
        PreviousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
