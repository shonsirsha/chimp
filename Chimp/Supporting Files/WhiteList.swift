//
//  WhiteList.swift
//  Chimp
//
//  Created by Sean on 04.04.20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import Foundation
import SwiftUI
extension NSTableView {
    open override func viewDidMoveToWindow() {
        super.viewDidMoveToWindow()

        // set the background color of every list to red
        backgroundColor = .white
    }
}
