//
//  SideBar.swift
//  Chimp
//
//  Created by Sean on 03.04.20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI

struct SideBar: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    let thisWindow:NSWindow?
    private func yay(){
        if let myScreen = NSScreen.main {
         let windowFrame = myScreen.frame
         let h = windowFrame.size.height
         let w = windowFrame.size.width
             print(w)
            thisWindow!.setFrameOrigin(NSPoint(x: w-55, y:  h/2-180))

         }
        
         
    }
 
    var body: some View {
        VStack(spacing: 0){
            Button(action: {
                print("contacts pressed")
            }) {
                Image("contacts_sidebar").resizable()
                    .frame(width: 24, height: 24)    .aspectRatio(contentMode: .fit)
                
            }.buttonStyle(PlainButtonStyle()) .padding(.bottom, 8)
            Divider()
            Button(action: {
                print("tasks pressed")
            }) {
                Image("tasks_sidebar").resizable()
                    .frame(width: 23, height: 23)    .aspectRatio(contentMode: .fit)
                
            }.buttonStyle(PlainButtonStyle()) .padding(.top, 8).padding(.bottom, 8)
            Divider()
            Button(action: {
                print("file pressed")
            }) {
                Image("file_sidebar").resizable()
                    .frame(width: 23, height: 23)    .aspectRatio(contentMode: .fit)
                
            }.buttonStyle(PlainButtonStyle()) .padding(.top, 8).padding(.bottom, 8)
            Divider()
            
            
            Spacer()
        }
        .frame(width: 40, height: 320)
    .contentShape(Rectangle())
    .gesture(
        TapGesture()
            .onEnded { _ in
                
                self.yay()
            }
    )
    }
}

//
//struct SideBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SideBar(thisWindow: NSWindow?)
//    }
//}
