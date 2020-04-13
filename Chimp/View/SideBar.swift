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
    
    @State var sideBarW = CGFloat(40);
    @State var sideBarH = CGFloat(320);
    
    private func yay(){
        if let myScreen = NSScreen.main {
            let windowFrame = myScreen.frame
            let h = windowFrame.size.height
            let w = windowFrame.size.width
            //            print("W: \(w)")
            print("h: \(h)")
//            let verticalPercentage = thisWindow!.frame.minY/h * 100
                           let horizontalPercentage = thisWindow!.frame.minX/w * 100
            if(horizontalPercentage > 50){
            let n = 1225 - w//right
                               thisWindow!.setFrameOrigin(NSPoint(x: w+n, y:  h/2-180))
            }else{
                    let n = 17 - w //left
                                                          thisWindow!.setFrameOrigin(NSPoint(x:w+n, y:  h/2-180))
            }
            
//            let midPtX = w/2
//            let midPtY = h/2
//
//            print(verticalPercentage)
//            if(verticalPercentage > 39.0){
//                print("top")
//            }else if(verticalPercentage < 20.0){
//                print("btm")
//                print(verticalPercentage)
//                if(horizontalPercentage >= 95){
//                let n = 1225 - w//right
//                                   thisWindow!.setFrameOrigin(NSPoint(x: w+n, y:  h/2-180))
//                }else if(horizontalPercentage <= 1.5){
//                        let n = 17 - w //left
//                                                              thisWindow!.setFrameOrigin(NSPoint(x:w+n, y:  h/2-180))
//                }else{
//                    sideBarW = CGFloat(320)
//                    sideBarH = CGFloat(40)
//                }
//
//
//                print("HORI: \(horizontalPercentage)")
//            }else{
//                if(midPtX > thisWindow!.frame.minX){
//                    print("minx: \(thisWindow!.frame.minX)")
//                    let n = 17 - w //left
//                    thisWindow!.setFrameOrigin(NSPoint(x:w+n, y:  h/2-180))
//                }else{
//                    let n = 1225 - w//right
//                    thisWindow!.setFrameOrigin(NSPoint(x: w+n, y:  h/2-180))
//
//                }
//            }
            
        
            
            
        }
        
        
    }
    
    var body: some View {
        VStack(spacing: 0){
            Button(action: {
                print("contacts pressed")
                self.yay()
                
            }) {
                Image("contacts_sidebar").resizable()
                    .frame(width: 24, height: 24)    .aspectRatio(contentMode: .fit)
                
            }.buttonStyle(PlainButtonStyle()) .padding(.bottom, 8).padding(.top,8)
            Divider()
            Button(action: {
                print("tasks pressed")
                self.yay()
                
            }) {
                Image("tasks_sidebar").resizable()
                    .frame(width: 23, height: 23)    .aspectRatio(contentMode: .fit)
                
            }.buttonStyle(PlainButtonStyle()) .padding(.top, 8).padding(.bottom, 8)
            Divider()
            Button(action: {
                print("file pressed")
                self.yay()
            }) {
                Image("file_sidebar").resizable()
                    .frame(width: 23, height: 23)    .aspectRatio(contentMode: .fit)
                
            }.buttonStyle(PlainButtonStyle()) .padding(.top, 8).padding(.bottom, 8)
            Divider()
            
            Spacer()
        }.onAppear{
        }
        .frame(width: sideBarW, height: sideBarH)
        .contentShape(Rectangle())
        .gesture(
            TapGesture().onEnded{_ in
                self.yay()
            }
        )
            .gesture(
                DragGesture(minimumDistance: 0.01, coordinateSpace: .global).onEnded{_ in
                    self.yay()
                }
                .onChanged { (value) in
                    
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
