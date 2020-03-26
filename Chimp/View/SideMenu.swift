//
//  SideMenu.swift
//  Chimp
//
//  Created by Sean Saoirse on 12/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI

struct SideMenu: View{
    let menus = ["Today", "Contacts", "Tasks", "Files",  "E-mails", "Store", "Settings"]
    @State private var didTap:Bool = false
    @EnvironmentObject var global: GlobalEnvironment

   var body: some View {
           NavigationView {
               VStack {
                   Text("Huhu")
                    List {
                        ForEach(1 ... 10, id: \.self) { index in
                            NavigationLink(destination: Text("\(index)")) {
                                Text("Link \(index)")
                            }
                        }
                    }
               }
           }.frame(maxWidth: .infinity, maxHeight: .infinity).listStyle(SidebarListStyle())
   }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}


