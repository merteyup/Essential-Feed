//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Eyüp Mert on 6.12.2023.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
