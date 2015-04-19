//
//  IBDesignableClass.swift
//  IBDesignable
//
//  Created by Panaswift Teachers on 12/04/2015.
//  Copyright (c) 2015 Panaswift Teachers. All rights reserved.
//

import UIKit

@IBDesignable class IBDesignableClass: UIView {
    override func drawRect(rect: CGRect) {

        var centre=CGPointMake(rect.width/2, rect.height/2)
        var circle=UIBezierPath(arcCenter: centre, radius: min(rect.width/2-4, rect.height/2-4), startAngle: 0, endAngle: 360, clockwise: true)
        UIColor.grayColor().setStroke()
        
        circle.lineWidth=7
        circle.stroke()
        
    
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
    


}
