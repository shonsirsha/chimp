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
    @State var selection: Int?
    var body: some View{
        
        NavigationView {
            VStack {
                Image("max")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 56.0, height: 56.0)
                    .clipShape(Circle())
                    .padding(EdgeInsets(top: 24, leading: 0, bottom: 4, trailing: 0))
                
                Text("Frederic Horsch")
                    .font(.system(size: 13, weight: .bold))
                
                Text("frederichorsch@web.de")
                    .font(.system(size: 9))
                    .padding(EdgeInsets(top: 4, leading: 0, bottom: 24, trailing: 0))
                List(selection: self.$selection) {
                    NavigationLink(destination: Today(),tag: 0, selection: self.$selection) {
                        Text("Today").font(.system(size: 12, weight: .regular)) .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                    }
                    NavigationLink(destination: ContactView()) {
                        Text("Contacts").font(.system(size: 12, weight: .regular)).padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        
                    }
                    
                    NavigationLink(destination: ContactView()) {
                        Text("Tasks").font(.system(size: 12, weight: .regular)).padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        
                    }
                    
                    NavigationLink(destination: ContactView()) {
                        Text("Files").font(.system(size: 12, weight: .regular)).padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        
                    }
                    NavigationLink(destination: ContactView()) {
                        Text("E-mails").font(.system(size: 12, weight: .regular)).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                        
                    }
                }.frame(minWidth: 100, maxWidth: 160, maxHeight: .infinity).listStyle(PlainListStyle()).onAppear{
                    self.selection = 0
                }
            }
        }        
        
        //        VStack(spacing: 0){
        //            VStack(alignment: .center, spacing: 0){
        //                Image("max")
        //                    .resizable()
        //                    .aspectRatio(contentMode: .fill)
        //                    .frame(width: 56.0, height: 56.0)
        //                    .clipShape(Circle())
        //                    .padding(.bottom,4)
        //
        //                Text("Frederic Horsch")
        //                    .font(.headline)
        //
        //                Text("frederichorsch@web.de")
        //                    .font(.system(size: 11))
        //                    .padding(.top, 4)
        //
        //            }.padding(.bottom, 16)
        //
        //
        //            ForEach(menus, id: \.self) { menu in
        //
        //                ZStack{
        //
        //                    Rectangle()
        //                        .fill(self.global.currentlyClicked == self.menus.firstIndex(of: menu)! ? Color.gray.opacity(0.3) : Color.black.opacity(0.00001))
        //                       .frame(height: 30)
        //
        //                    HStack {
        //                        Text("\(menu)")
        //                    }
        //
        //                }.padding(.bottom, 8).gesture(TapGesture().onEnded{_ in
        //                    self.global.currentlyClicked = self.menus.firstIndex(of: menu)!
        //                    self.didTap = true
        //
        //                })
        //            }
        //
        //            Spacer()
        //
        //
        //        }.frame(minWidth: 130, maxWidth: 180)
        //            .padding(.top, 32)
        //    }
    }
    
    
    
    struct SideMenu_Previews: PreviewProvider {
        static var previews: some View {
            SideMenu()
        }
    }
    
    
    struct DetailView2: View {
        var body: some View{
            Text("x").frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    struct DetailView3: View {
        var body: some View{
            Text("xasdasd").frame(minWidth:450, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        }
    }
}
