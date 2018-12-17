//
//  MyView.swift
//  task4-2
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 mxy. All rights reserved.
//

import UIKit

class MyView: UIView {
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        
        UIColor.black.setStroke()
        path.stroke()
        
        UIColor.cyan.setFill()  
        path.fill()
    }
    
}

