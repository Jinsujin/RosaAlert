//
//  ViewController.swift
//  RosaAlert
//
//  Created by Jinsujin on 08/22/2022.
//  Copyright (c) 2022 Jinsujin. All rights reserved.
//

import UIKit
import RosaAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert(_ sender: Any) {
        RosaAlert(title: "Hello?") {
            print("Hi~")
        }.show(in: self)
    }
}

