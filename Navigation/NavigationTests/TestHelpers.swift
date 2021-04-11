//
//  TestHelpers.swift
//  NavigationTests
//
//  Created by 贾发 on 2021/4/11.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func executeRunLoop() {
    RunLoop.current.run(until: Date())
}
