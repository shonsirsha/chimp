//
//  SideMenu.swift
//  Chimp
//
//  Created by Sean Saoirse on 12/03/20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI

struct SideMenu: View{
    let menus = ["Today", "Settings"]
    

    var body: some View{
        VStack(spacing: 0){
            VStack(alignment: .center){
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
                 .padding(.bottom, 16)
            }
         
            
            ForEach(menus, id: \.self) { menu in
                
                 ZStack{
                           
               Rectangle()
                   .fill(Color.black.opacity(0))
                  
               
               
               HStack {
                   Text("\(menu)")
               }
               
                 }.padding(.bottom, 8)
                
                                       
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


