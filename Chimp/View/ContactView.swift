//
//  ContactView.swift
//  Chimp
//
//  Created by Sean on 26.03.20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    @ObservedObject private var indexManager = IndexManager()
    @State private var contactNameSection: [ContactSection] = []
    private var contactType = ["P","C"]
        @State private var name: String = "Tim"
    @EnvironmentObject var global: GlobalEnvironment
    @State private var searchContent = "";
    
    var body: some View {
        ZStack{
            NavigationView {
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        TextField("Search...", text: $name)
                        Picker("", selection: $indexManager.contactSelectorIndex) {
                            ForEach(0 ..< contactType.count) { index in
                                Text(self.contactType[index]).tag(index)
                                
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                            .onReceive(indexManager.publisher) { int in
                                self.loadJSON(num: int)
                        } .padding(.leading, 2)
                            .padding(.trailing,2)
                        
                    }
                   
                    .padding(.top, 12)
                    .padding(.bottom, 12)
                    .padding(.leading, 8)

                    
                    Divider()
                        .padding(.bottom, 12)
                      
                    
                    
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
                    }.padding(.trailing, -16)
                    .frame(minWidth: 250, maxWidth: 260)
                }
                
            }
            .frame(minWidth: 400, idealWidth: 400, maxWidth: .infinity, minHeight: 300)
            .onAppear{
                self.loadJSON(num: self.indexManager.contactSelectorIndex)
            }
        }.frame(minWidth: 450, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        
    }
    
    
    func loadJSON(num: Int) {
        if(num == 0){
            contactNameSection = Bundle.main.decode([ContactSection].self, from: "people.json")
        }else{
            contactNameSection = Bundle.main.decode([ContactSection].self, from: "companies.json")
        }
        
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
