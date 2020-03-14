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
    @State var currentlyClicked = -1
    var body: some View{
        VStack(spacing: 0){
            VStack(alignment: .center, spacing: 0){
                Image("max")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 56.0, height: 56.0)
                    .clipShape(Circle())
                
                
                Text("Frederic Horsch")
                    .font(.headline)
                
                Text("frederichorsch@web.de")
                    .font(.system(size: 11))
                    .padding(.top, 3)
                    
            }.padding(.bottom, 32)
            
            
            ForEach(menus, id: \.self) { menu in
                
                ZStack{
                    
                    Rectangle()
                        .fill(self.currentlyClicked == self.menus.firstIndex(of: menu)! ? Color.gray.opacity(0.3) : Color.black.opacity(0.00001))
                       .frame(height: 30)

                    HStack {
                        Text("\(menu)")
                    }
                    
                }.padding(.bottom, 8).gesture(TapGesture().onEnded{_ in
                    print("BBBBA")
                 self.currentlyClicked = self.menus.firstIndex(of: menu)!

                    self.didTap = true
                  
                })
                
                
            }
            
            Spacer()
            
            
        }.frame(minWidth: 130, maxWidth: 180)
            .padding(.top, 32)
    }
}



struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}


