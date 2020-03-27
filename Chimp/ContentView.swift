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

    
    var body: some View {
        
        HStack(spacing: 0){
            
            SideMenu()

        }
    }
    

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
