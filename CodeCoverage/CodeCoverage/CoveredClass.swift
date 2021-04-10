//
//  CoveredClass.swift
//  CodeCoverage
//
//  Created by 贾发 on 2021/4/10.
//

import UIKit

class CoveredClass {
    
//    Cover a Conditional
    static func max(_ x: Int, _ y: Int) -> Int {
        if x < y {
            return y
        } else {
            return x
        }
    }
    
//    Cover a Loop
    static func commaSeparated(from: Int, to: Int) -> String {
        var result = ""
        for i in from..<to {
            result += "\(i),"
        }
        result += "\(to)"
        return result
    }
    
//    Cover Statements in a Sequence
    private(set) var area: Int
    
    var width: Int {
        didSet {
//            这里会被覆盖率误导。删除不影响覆盖率
            area = width * width
            let color: UIColor = redOrGreen(for: width)
            drawSquare(width: width, color: color)
        }
    }
    
    init() {
        area = 0
        width = 0
    }
    
    private func redOrGreen(for width: Int) -> UIColor {
        width % 2 == 0 ? .red : .green
    }
    
    private func drawSquare(width: Int, color: UIColor) {
        
    }
    
}
