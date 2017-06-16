//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Scott Smith on 6/15/17.
//  Copyright © 2017 Scott Smith. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {


    @IBOutlet var impSwitch: UISwitch!
    @IBOutlet var taskNameTextField: UITextField!
    
    var previousVC  = TasksViewController()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addBtn(_ sender: Any) {
       let task = Task()
        task.name = taskNameTextField.text!
        task.important = impSwitch.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
}
