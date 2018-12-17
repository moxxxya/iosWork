//
//  ViewController.swift
//  task5
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 mxy. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    //声明UILabel对象
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置根视图视图背景色
        self.view.backgroundColor = UIColor.white
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
        label.text = "hello world"
        self.view.addSubview(label)
        
        
        let btn = UIButton(frame: CGRect(x: 100, y: 250, width: 100, height: 40))
        btn.setTitle("点我", for: .normal)
        btn.layer.borderWidth = 1
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.setTitleColor(UIColor.brown, for: .highlighted)
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 400, width: self.view.frame.width - 20, height: (self.view.frame.width - 20) * 0.618))
        let path = Bundle.main.path(forResource: "cat", ofType: "jpg")
        let image = UIImage(contentsOfFile: path!)
        imageView.image = image
        self.view.addSubview(imageView)
    }
    
    
    /// 按钮点击事件，改变label显示的文字
    @objc func clicked() {
        if label.text == "hello world" {
            label.text = "I'm clicked"
        } else {
            label.text = "hello world"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


