//
//  Circle.swift
//  CoreGraphics
//
//  Created by Panaswift Teachers on 12/04/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit
import CoreGraphics

@IBDesignable
class Circle: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    @IBInspectable
    var color: UIColor = UIColor.blackColor() {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.yellowColor()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        println("Vie storyboard!")
        backgroundColor = UIColor.yellowColor()
    }
    
    override func drawRect(rect: CGRect) {
        
        let triangle = UIBezierPath()
        triangle.moveToPoint(CGPoint(x: 50.0, y: 50.0))
        triangle.addLineToPoint(CGPoint(x: 25.0, y: 0))
        triangle.addLineToPoint(CGPoint(x: 0, y: 50.0))
        triangle.addLineToPoint(CGPoint(x: 50.0, y: 50.0))
        color.setStroke()
        triangle.stroke()
        
        let oval = UIBezierPath(ovalInRect: rect)
        color.setFill()
        oval.fill()
        
        self.backgroundColor = UIColor.whiteColor()
    }

}
