//
//  ContentView.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 23/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body : some View{
        VStack(spacing: 0){
           
            HStack{
                Text("Notes").font(.title)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "trash").resizable().frame(width: 23, height: 23).foregroundColor(.white)
                }
            }.padding().padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top).background(Color.red)
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

class Hoest : UIHostingController<ContentView>{
    
}
