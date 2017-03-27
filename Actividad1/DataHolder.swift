//
//  DataHolder.swift
//  LOGIN
//
//  Created by Jorge Pachón Sánchez on 21/3/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class DataHolder: NSObject {
    static let sharedInstance:DataHolder=DataHolder()
    
    var User:String?
    var Password:String?
    var Email:String?
    
}
