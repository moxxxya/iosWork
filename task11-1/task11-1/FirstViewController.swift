//
//  ViewController.swift
//  task11-1
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 mxy. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {
    
    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        tfNo.text = userDefault.string(forKey: "no")
        tfName.text = userDefault.string(forKey: "name")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Second"{
            let secVC = segue.destination as! SecondViewController
            secVC.no = tfNo.text!
            secVC.name = tfName.text!
            
            //store to file
            userDefault.set(tfNo.text!, forKey: "no")
            userDefault.set(tfName.text!, forKey: "name")
            userDefault.synchronize()
            
            print(NSTemporaryDirectory())
        }
    }
    
    @IBAction func myback(segue:UIStoryboardSegue) {
        if let secVC = segue.source as? SecondViewController {
            tfNo.text = secVC.no
            tfName.text = secVC.name
        }
    }
}

