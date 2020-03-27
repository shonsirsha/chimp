//
//  IndexManager.swift
//  Chimp
//
//  Created by Sean on 27.03.20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import Foundation
import Combine
class IndexManager: ObservableObject {
    @Published var contactSelectorIndex = 0 {
        didSet {
            publisher.send(contactSelectorIndex)
        }
    }
    
    let publisher = PassthroughSubject<Int, Never>()
}
