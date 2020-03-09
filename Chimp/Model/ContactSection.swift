//
//  Contacts.swift
//  Chimp
//
//  Created by Sean Saoirse on 09/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import Foundation

struct ContactSection: Identifiable, Codable {
    let id = UUID()
    let firstLetter: String
    let people: [ContactDetail]

}
