//
//  ViewController.swift
//  task4-3
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 mxy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label = UILabel(frame: CGRect(x: 130, y: 100, width: 200, height: 44))
        label.text = "Hello World"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        self.view.addSubview(label)
        
        btn = UIButton(frame: CGRect(x: 130, y: 400, width: 100, height: 37))
        btn.setTitle("Click", for: .normal)
        btn.backgroundColor = UIColor.purple
        btn.setTitleColor(UIColor.black, for: .highlighted)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    }
    
    @IBAction func clicked(_ sender: Any) {
        if label.text! == "Clicked" {
            label.text = "Hello World"
            btn.setTitle("Click Me", for: .normal)
        } else {
            label.text = "Clicked"
            btn.setTitle("hello", for: .normal)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

