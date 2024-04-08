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

@_cdecl("MyObjectCreate")
public func MyObjectCreate() -> UnsafeMutableRawPointer {
    let instance = MyObject()
    return Unmanaged.passRetained(instance).toOpaque()
}

@_cdecl("MyObjectDestroy")
public func MyObjectDestroy(_ raw: UnsafeMutableRawPointer) {
    Unmanaged<MyObject>.fromOpaque(raw).release()
}

@_cdecl("MyObjectMultiplyBy")
public func MyObjectMultiplyBy(_ raw: UnsafeMutableRawPointer, _ y: Int) -> Int {
    let instance = Unmanaged<MyObject>.fromOpaque(raw).takeUnretainedValue()
    return instance.multiplyBy(x: y)
}
