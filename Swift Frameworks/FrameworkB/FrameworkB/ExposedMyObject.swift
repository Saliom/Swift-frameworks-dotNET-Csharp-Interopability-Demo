//
//  ExposedMyObject.swift
//  FrameworkB
//
//  Created by Saliom on 7/4/2024.
//

import Foundation
import FrameworkA

@_cdecl("calculateA")
public func calculateA() -> Double {
    return 15
}

@_cdecl("calculateB")
public func calculateB(length: Double, width: Double = 1.0) -> Double {
    return length * width
}

@_cdecl("calculateC")
public func calculateC(l: Double, w: Double = 1.0) -> Double {
    return calculateRectangleArea(length: l, width: w)
}
