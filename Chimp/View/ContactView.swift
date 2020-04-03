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
    @State private var name: String = ""
    @EnvironmentObject var global: GlobalEnvironment
    @State private var searchContent = "";
    @State private var showingAlert = false
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
                        }  .fixedSize()
                         .frame(width: 30) .padding(.leading, 24)
                            .padding(.trailing,30)
                      
                        
                        
//                        Button(action: {
//                            self.showingAlert = true
//                        }) {
//                            Text("Show Alert")
//                        }
//                        .alert(isPresented:$showingAlert) {
//                            Alert(title: Text("SwiftUI Alert!"), message: Text("This is so easy"), primaryButton: .default(Text("Yes")) {
//                                print("Yeah")
//                                }, secondaryButton: .destructive(Text("Cancel")))
//                        }
                        
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
                }
                
            }.onAppear{
                self.loadJSON(num: self.indexManager.contactSelectorIndex)
            }
        }.frame(idealWidth: 200,maxHeight: .infinity)
        
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
