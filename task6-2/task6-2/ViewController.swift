//
//  ViewController.swift
//  task6-2
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 mxy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let redView = UIView()
        redView.backgroundColor =  _ColorLiteralType(red: 1, green: 0.2270588279, blue: 0.4302381575, alpha: 1)
        let greenView = UIView()
        greenView.backgroundColor =  _ColorLiteralType(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        let yellowView = UIView()
        yellowView.backgroundColor =  _ColorLiteralType(red: 1, green: 0.6834542155, blue: 0.5937021971, alpha: 1)
        
        let stackView = UIStackView(arrangedSubviews: [redView,greenView,yellowView])
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



