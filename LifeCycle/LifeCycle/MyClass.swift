//
//  MyClass.swift
//  LifeCycle
//
//  Created by 贾发 on 2021/4/9.
//

import Foundation

class MyClass {
    private static var allInstance = 0
    private let instance: Int
    
    init() {
        MyClass.allInstance += 1
        instance = MyClass.allInstance
        print(">> MyClass.init() #\(instance)")
    }
    
    deinit {
        print(">> MyClass.deinit #\(instance)")
    }
    
    func methodOne() {
        print(">> methodOne")
    }
    
    func methodTwo() {
        print(">> methodTwo")
    }
}
