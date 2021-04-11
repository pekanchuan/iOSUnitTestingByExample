//
//  TestHelpers.swift
//  ButtonTapTests
//
//  Created by 贾发 on 2021/4/11.
//

import UIKit

func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}

func tap(_ button: UIBarButtonItem) {
    _ = button.target?.perform(button.action, with: nil)
}
