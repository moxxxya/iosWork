//
//  ViewController.swift
//  task4-1
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 mxy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let manager = FileManager.default
        let document = manager.urls(for: .documentDirectory, in: .userDomainMask).first?.path
        let file = document?.appending("/download") //图片文件夹
        
        //print(document!) //输出Document路径，方便查看
        if manager.fileExists(atPath: file!) {  //若该文件夹存在
            let image = file?.appending("/newCat.jpg")  //图片文件
            if manager.fileExists(atPath: image!) {  //若该文件存在，则显示到界面上
                do{
                    let data = try Data(contentsOf: URL(fileURLWithPath: image!))
                    let img = UIImage(data: data)
                    let imageView = UIImageView(image: img)
                    imageView.frame = CGRect(x: 0, y: 100, width: 400, height: 300)
                    self.view.addSubview(imageView)
                } catch {
                    print(error)
                }
            } else {  //若不存在，则从网络下载一个图片并保存为图片文件
                let url = URL(string: "https://yys.res.netease.com/pc/zt/20170731172708/data/picture/20181120/7/1366x768.jpg")
                do{
                    let data = try Data(contentsOf: url!)
                    try data.write(to: URL(fileURLWithPath: image!), options: .atomicWrite)
                    print("文件不存在，已成功创建文件")
                } catch {
                    print(error)
                }
            }
        } else {  //若该文件夹不存在，则创建该文件夹
            do {
                try manager.createDirectory(atPath: file!, withIntermediateDirectories: true, attributes: nil)
                print("文件夹不存在，已成功创建文件夹")
            } catch {
                print(error)
            }
        }
    }
}


