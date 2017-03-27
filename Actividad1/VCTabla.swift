//
//  VCTabla.swift
//  LOGIN
//
//  Created by Jorge Pachón Sánchez on 21/3/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class VCTabla: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var mitabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:Cell = tableView.dequeueReusableCell(withIdentifier: "miCelda") as! Cell
        
        if(indexPath.row==0){
            cell.lblnombre?.text="jorge"
        }
        else if(indexPath.row==1){
            cell.lblnombre?.text="pachon"
        }
        else if(indexPath.row==2){
            cell.lblnombre?.text="sanchez"
        }
        else if(indexPath.row==3){
            cell.lblnombre?.text="1º damp"
        }
        else if(indexPath.row==4){
            cell.lblnombre?.text="u-tad"
        }
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
