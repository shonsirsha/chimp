//
//  ContactDetail.swift
//  Chimp
//
//  Created by Sean Saoirse on 09/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import Foundation

struct ContactDetail: Identifiable, Codable {
    var id = UUID()
    var firstName: String
    var lastName: String

}
