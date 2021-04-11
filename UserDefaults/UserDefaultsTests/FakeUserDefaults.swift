//
//  FakeUserDefaults.swift
//  UserDefaultsTests
//
//  Created by 贾发 on 2021/4/11.
//

import Foundation
@testable import UserDefaults

class FakeUserDefaults: UserDefaultsProtocol {
    var integers: [String: Int] = [:]
    
    func set(_ value: Int, forKey defaultName: String) {
        integers[defaultName] = value
    }
    
    func integer(forKey defaultName: String) -> Int {
        integers[defaultName] ?? 0
    }
    
    
}
