//
//  SquiggleView.swift
//  Look Ma It Draws in Technicolor
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/27/17.
//  Copyright © 2017 Aditya Srimat Tirumala Pallerlamudi. All rights reserved.
//

import UIKit

struct Squiggles {
    var dots:[CGPoint]
    var color:UIColor
}

class SquiggleView: UIView {
    
    var dots:[CGPoint] = []
    var squiggles:[Squiggles] = []
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dots = []
        dots.append(touches.first!.location(in: self))
        setNeedsDisplay()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        dots.append(touches.first!.location(in: self))
        setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        dots.append(touches.first!.location(in: self))
        squiggles.append(Squiggles(dots: dots, color: dynamicColor))
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        if squiggles.count == 0 {
            return
        }
        
        for squiggle in squiggles {
            let bezier = UIBezierPath()
            bezier.move(to:squiggle.dots[0])
            for dot in squiggle.dots {
                bezier.addLine(to: dot)
                squiggle.color.setStroke()
                bezier.stroke()
            }
            
        }
        
    }
    
}

