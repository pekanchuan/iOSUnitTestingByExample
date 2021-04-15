//
//  SegueNextViewController.swift
//  Navigation
//
//  Created by 贾发 on 2021/4/11.
//

import UIKit

class SegueNextViewController: UIViewController {
    var labelText: String?
    
    @IBOutlet private(set) var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = labelText
    }
    
    deinit {
        print(">> SegueNextViewController.deinit")
    }

}
