//
//  SectionHeaderView.swift
//  Chimp
//
//  Created by Sean Saoirse on 09/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI

struct SectionHeaderView: View {
    let section: ContactSection

           
   var body: some View {
       HStack(spacing: 20) {
           Text(section.firstLetter)
            .font(.system(size: 12, weight: .regular))
               .layoutPriority(1)
       }.padding(.leading, 8)
   }
}


