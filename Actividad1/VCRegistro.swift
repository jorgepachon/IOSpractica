//
//  VCRegistro.swift
//  LOGIN
//
//  Created by Jorge Pachón Sánchez on 21/3/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class VCRegistro: UIViewController {
    @IBOutlet var txtfRUser:UITextField?
    @IBOutlet var txtfRPass:UITextField?
    @IBOutlet var txtfPasstwo:UITextField?
    @IBOutlet var txtfEmail:UITextField?
    @IBOutlet var faillogin:UILabel?
    
    
    
    @IBAction func accionokr(){
        if (txtfRUser?.text?.isEmpty)! || (txtfRPass?.text?.isEmpty)! || (txtfPasstwo?.text?.isEmpty)! || (txtfEmail?.text?.isEmpty)! {
            displayAlert(alertTitle: "Alerta",alertMessage: "DEBES COMPLETAR LOS CAMPOS")
        }
        if txtfRPass?.text==txtfPasstwo?.text {
            DataHolder.sharedInstance.User=txtfRUser?.text
            DataHolder.sharedInstance.Password=txtfRPass?.text
            DataHolder.sharedInstance.Email=txtfEmail?.text
            self.performSegue(withIdentifier: "tran2", sender: self)
        }
        
        else{
            displayAlert(alertTitle: "Alerta",alertMessage: "ERROR CONTRASEÑA NO COINCIDE")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  func displayAlert(alertTitle:String, alertMessage:String){
        let myAlert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        myAlert.addAction(okButton)
        self.present(myAlert, animated: true, completion: nil)
    }
    
  

}
