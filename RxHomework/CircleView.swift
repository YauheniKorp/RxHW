//
//  CircleView.swift
//  RxHomework
//
//  Created by Admin on 14.10.2021.
//

import UIKit

class CircleView: UIView {
    
    let widthAndHeight = arc4random() % 150
    let randomLayout = CGPoint(x: Int(arc4random() % 300), y: Int(arc4random() % 500))
    let colorsOfCircle = [UIColor.blue,
                          UIColor.black,
                          UIColor.yellow,
                          UIColor.green,
                          UIColor.orange,
                          UIColor.purple,
                          UIColor.red]
    
    
    func createCircle() {
        
        frame = CGRect(x: randomLayout.x, y: randomLayout.y, width: CGFloat(Int(widthAndHeight)), height: CGFloat(Int(widthAndHeight)))
        backgroundColor = colorsOfCircle[Int(arc4random()) % colorsOfCircle.count]
        layer.cornerRadius = CGFloat(widthAndHeight / 2)
    }

    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        createCircle()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
