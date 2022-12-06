//
//  SecondViewController.swift
//  MCServerApp
//
//  Created by KELSEY COLLINS on 12/1/22.
//

import UIKit

class SecondViewController: UIViewController{

    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textIPAdress: UITextField!
    
    var n=""
    var i=""
    var br=false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        n = textName.text!
        i = textIPAdress.text!
 
        // Do any additional setup after loading the view.
    }
    
  

    @IBAction func switchBedRock(_ sender: UISwitch) {
        if sender.isOn==true{
            br=true
        }
        else{
            br=false
        }
    }
    @IBAction func addServer(_ sender: UIButton) {
        
        addServerGlobal(Server(name: n, ip: i, bedrock: br))
    }
    

}
