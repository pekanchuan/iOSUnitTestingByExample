//
//  Analytics.swift
//  HardDependencies
//
//  Created by 贾发 on 2021/4/11.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        
        if self !== Analytics.shared {
            print(">> ...Not the Analytics singleton")
        }
    }
}
