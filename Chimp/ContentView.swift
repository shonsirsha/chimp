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

    private func sidebarSetup(){
        var sidebarWindow:NSWindow
        
        let window = NSRect(x: 0, y: 0, width: 0, height: 0)
        sidebarWindow = NSWindow(
            contentRect: window,
            styleMask: [.titled,.miniaturizable],
            backing: .buffered, defer: false)
        
        //hide the close btns,etc.
        
        sidebarWindow.collectionBehavior = NSWindow.CollectionBehavior.canJoinAllSpaces
//
//                     sidebarWindow.collectionBehavior = NSWindow.CollectionBehavior.moveToActiveSpace
        print("main sidebarWindow \(sidebarWindow)")
sidebarWindow.standardWindowButton(.closeButton)!.isHidden = true
        sidebarWindow.standardWindowButton(.miniaturizeButton)!.isHidden = true
        sidebarWindow.standardWindowButton(.zoomButton)!.isHidden = true
        sidebarWindow.titlebarAppearsTransparent = true
        
        //drag by its body
        sidebarWindow.isMovableByWindowBackground = true
        
        //colors
        sidebarWindow.backgroundColor = NSColor(red: 0,green: 0,blue: 0,alpha: 0.75)
        sidebarWindow.hasShadow = false
        sidebarWindow.isOpaque = false
        
        //corner radius
        
        //always ontop
       
        
        sidebarWindow.level = .floating
        sidebarWindow.makeKeyAndOrderFront(nil)
        
      
        if let myScreen = NSScreen.main {
            let windowFrame = myScreen.frame
            let h = windowFrame.size.height
            let w = windowFrame.size.width
            sidebarWindow.setFrameOrigin(NSPoint(x: w-55, y:  h/2-180))
            
//             sidebarWindow.setFrameOrigin(NSPoint(x: 55-w, y:  h/2-180))
        }
        
        sidebarWindow.contentView = NSHostingView(rootView: SideBar(thisWindow: sidebarWindow))
    }
    
    private func initSetup() {
        sidebarSetup()
    }
    
    var body: some View {
        HStack(spacing: 0){
            SideMenu()
        }.onAppear(perform: sidebarSetup)
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
