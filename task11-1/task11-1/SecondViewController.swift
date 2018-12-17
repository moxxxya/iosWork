//
//  SecondViewController.swift
//  task11-1
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 mxy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var name = ""
    var no = ""
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNo.text = no
        tfName.text = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        no = tfNo.text!
        name = tfName.text!
    }

}
