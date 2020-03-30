//
//  CallsView.swift
//  Chimp
//
//  Created by Sean on 26.03.20.
//  Copyright © 2020 Sean Saoirse. All rights reserved.
//

import SwiftUI

struct CallsView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    var body: some View {
        VStack(spacing: 0){
            List{
                
                ForEach(1...25, id: \.self) { _ in
                        VStack(spacing: 0){
                                    HStack(spacing: 0){
                                        HStack(spacing: 0){
                                            Image(self.colorScheme == .dark ? "calendar-w": "calendar-d").resizable().frame(width: 14, height: 14).padding(.trailing, 4)
                                            Text("21.11.2019").font(.system(size: 13, weight: .regular))
                                                .padding(.trailing, 8)
                                            
                                            Image(self.colorScheme == .dark ? "clock-w": "clock-d").resizable().frame(width: 14, height: 14).padding(.trailing, 4)
                                            Text("17:03").font(.system(size: 13, weight: .regular))
                                            Spacer()
                                        }
                                        Text("20:21").font(.system(size: 13, weight: .regular))
                                        
                                    }      .padding(.bottom,8)
                                        .padding(.top,8)
                                    Divider()
                                    
                                }
                }
                
                
            }
        }
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}
