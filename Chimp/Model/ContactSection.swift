//
//  Contacts.swift
//  Chimp
//
//  Created by Sean Saoirse on 09/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import Foundation

struct ContactSection: Identifiable, Codable {
    var id = UUID()
    var firstLetter: String
    var people: [ContactDetail]

}
