//
//  MyObject.swift
//  FrameworkA
//
//  Created by Saliom on 7/4/2024.
//

import Foundation

public class MyObject: NSObject {
    var number: Int

    public override init() {
        self.number = 10
    }

    public func multiplyBy(x: Int) -> Int {
        return number * x
    }
}

public func calculateRectangleArea(length: Double, width: Double = 1.0) -> Double {
    return length * width
}
