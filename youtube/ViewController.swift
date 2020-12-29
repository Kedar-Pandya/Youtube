//
//  ViewController.swift
//  youtube
//
//  Created by Kedar Pandya on 22/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideo()
      
    }


}

