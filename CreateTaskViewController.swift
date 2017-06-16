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
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addBtn(_ sender: Any) {
       
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = impSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()

        navigationController!.popViewController(animated: true)
        
    }
    
}
