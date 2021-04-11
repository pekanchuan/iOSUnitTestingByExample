//
//  ViewController.swift
//  ButtonTap
//
//  Created by 贾发 on 2021/4/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func buttonTap() {
        print(">> button was tapped")
    }

}

