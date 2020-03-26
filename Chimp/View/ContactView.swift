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
    private var contactType = ["People","Companies"]
    
    @EnvironmentObject var global: GlobalEnvironment
    @State private var searchContent = "";
    
    var body: some View {
        ZStack{
            NavigationView {
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        Picker("", selection: $indexManager.contactSelectorIndex) {
                            ForEach(0 ..< contactType.count) { index in
                                Text(self.contactType[index]).tag(index)
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                            .onReceive(indexManager.publisher) { int in
                                self.loadJSON(num: int)
                        }
                        .fixedSize()
                        .frame(width: 40)
                        
                    }
                        
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                    
                    
                    
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
                    .frame(minWidth: 250, maxWidth: 290)
                }
                
            }
            .frame(minWidth: 400, idealWidth: 400, maxWidth: .infinity, minHeight: 300)
            .onAppear{
                self.loadJSON(num: self.indexManager.contactSelectorIndex)
            }
        }.frame(minWidth: 450, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        
    }
    
    
    func loadJSON(num: Int) {
        print("ASDASD ")
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
