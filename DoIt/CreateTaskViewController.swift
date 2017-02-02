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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //create a task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = tasknametextfield.text!
        task.important = importantswitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //pop back
        
        navigationController!.popViewController(animated: true)
        
    }

}
