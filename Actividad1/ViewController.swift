//
//  ViewController.swift
//  LOGIN
//
//  Created by Jorge Pachón Sánchez on 21/3/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var btnLogear:UIButton?
    @IBOutlet var txtfUser:UITextField?
    @IBOutlet var txtfPass:UITextField?
    @IBOutlet var failLogin:UILabel?
    var stUser:String?
    var inPass:String?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func accionBotonLoguear(){
        if txtfUser?.text==DataHolder.sharedInstance.User && txtfPass?.text==DataHolder.sharedInstance.Password{
            self.performSegue(withIdentifier: "tran1", sender: self)
        }
        else{
            let myAlert = UIAlertController(title: "Alerta", message: "REPITE DE NUEVO", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default)
            myAlert.addAction(okButton)
            self.present(myAlert, animated: true, completion: nil)
        }
    }

}

