//
//  SquiggleView.swift
//  Look Ma It Draws in Technicolor
//
//  Created by Srimat Tirumala Pallerlamudi,Aditya on 11/27/17.
//  Copyright © 2017 Aditya Srimat Tirumala Pallerlamudi. All rights reserved.
//

import UIKit

class SquiggleView: UIView {
    
    var dots:[CGPoint] = []
    var squiggles:[[CGPoint]] = [[]]
    var flag:Int = 0
    var cnt:Int = 0
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        squiggles[cnt].append(touches.first!.location(in: self))
        setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        squiggles[cnt].append(touches.first!.location(in: self))
        setNeedsDisplay()
        cnt = cnt + 1
     //   squiggles.append(CGPoint)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        squiggles[cnt].append(touches.first!.location(in: self))
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        if squiggles[cnt].count == 0 {
            return
        }
        
        print(cnt)
        
        let bezier = UIBezierPath()
        bezier.move(to: squiggles[cnt][0])
        for squiggle in squiggles[cnt] {
            bezier.addLine(to: squiggle)
            dynamicColor.setStroke()
            bezier.stroke()
        }

        
    }
    
}

