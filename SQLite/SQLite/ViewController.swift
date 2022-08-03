//
//  ViewController.swift
//  SQLite
//
//  Created by Admin on 26/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFname: UITextField!
    @IBOutlet weak var txtLname: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func onClickSave(_ sender: UIButton) {
        
        let modelInfo = SQLoginModel(fname: txtFname.text!, lname: txtLname.text!, phone: txtPhone.text!, email: txtEmail.text!)
        
              let isSave = DatabaseManager.getInstance().saveData(modelInfo)
              print(isSave)
       
        self.txtFname.text = ""
        self.txtLname.text = ""
        self.txtPhone.text = ""
        self.txtEmail.text = ""
        
    }
    
}




