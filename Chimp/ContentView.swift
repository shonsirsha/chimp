//
//  ContentView.swift
//  Chimp
//
//  Created by Sean Saoirse on 09/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI
import Foundation
struct ContentView: View {
    @State private var contactNameSection: [ContactSection] = []
    @EnvironmentObject var global: GlobalEnvironment

    var body: some View {
        HStack(spacing: 0){
     
//           Button(action: {
//            self.loadJSON(num:)
//
//
//
//
//
////            self.contactNameSection = self.contactNameSection.filter { $0.contains("N")}
//           }) {
//              Text("Test")
//           }
            SideMenu()
            ZStack{
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
                    .frame(minWidth: 400, idealWidth: 400, maxWidth: .infinity, minHeight: 300)
                    .opacity(global.currentlyClicked == 0 ? 0 : 1)
                    .onAppear{
                        self.loadJSON(num: 0)
                    }
                
                Today().opacity(global.currentlyClicked == 0 ? 1 : 0)
            }
            
        }
    }
    
    func loadJSON(num: Int) {
        if(num == 0){
                 contactNameSection = Bundle.main.decode([ContactSection].self, from: "people.json")
        }else{
             contactNameSection = Bundle.main.decode([ContactSection].self, from: "companies.json")
        }
       
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
