//
//  TransparentButton.swift
//  Chimp
//
//  Created by Sean on 27.03.20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import Foundation
import SwiftUI
struct TransparentButton: ButtonStyle {
//  var foregroundColor: Color
//  var backgroundColor: Color
//  var pressedColor: Color

  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      
        .background(Color.black)
    .opacity(0)
  }
}
