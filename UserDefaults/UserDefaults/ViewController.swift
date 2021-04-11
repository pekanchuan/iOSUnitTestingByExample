//
//  ViewController.swift
//  UserDefaults
//
//  Created by 贾发 on 2021/4/11.
//

import UIKit

protocol UserDefaultsProtocol {
    func set(_ value: Int, forKey defaultName: String)
    func integer(forKey defaultName: String) -> Int
}

class ViewController: UIViewController {
    @IBOutlet private(set) var counterLabel: UILabel!
    @IBOutlet private(set) var incrementButton: UIButton!
    
    private var count = 0 {
        didSet {
            counterLabel.text = "\(count)"
            userDefaults.set(count, forKey: "count")
        }
    }
    
    var userDefaults: UserDefaultsProtocol = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = userDefaults.integer(forKey: "count")
    }

    @IBAction private func incrementButtonTapped() {
        count += 1
    }

}

extension UserDefaults: UserDefaultsProtocol {}
