//
//  ContactDetail.swift
//  Chimp
//
//  Created by Sean Saoirse on 09/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import Foundation

struct ContactDetail: Identifiable, Codable {
    let id = UUID()
    let firstName: String
    let lastName: String
//    var imageUrl: URL {
//        let address = "https://http.cat/\(code).jpg"
//        return URL(string: address)!
//    }
}
