//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Eyüp Mert on 17.10.2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
