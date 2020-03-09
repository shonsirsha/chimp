//
//  ContentView.swift
//  Chimp
//
//  Created by Sean Saoirse on 09/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    @State private var contactNameSection: [ContactSection] = []
    
    
    var body: some View {
        HStack {
            List{
                VStack{
                               Text("YOLO")
                                   .font(.headline)
                           }
                           
            }.listStyle(SidebarListStyle())
            .frame(minWidth: 150, maxWidth: 200)
           
            
            NavigationView {
                List {
                    ForEach(contactNameSection) { section in
                        Section(header: SectionHeaderView(section: section)) {
                            ForEach(section.people) { person in
                                NavigationLink(destination: DetailView(contact: person)) {
                                    TableRowView(contact: person)
                                }
                            }
                        }
                    }
                }
                .frame(minWidth: 250, maxWidth: 350)
            }
                .frame(minWidth: 300, idealWidth: .infinity, maxWidth: .infinity, minHeight: 300)
                .onAppear{
                    self.loadJSON()
            }
        }
    }
    
    func loadJSON() {
        contactNameSection = Bundle.main.decode([ContactSection].self, from: "people.json")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
