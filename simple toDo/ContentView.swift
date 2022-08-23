//
//  ContentView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 22.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State var name = "Никита!"
    var body: some View {
        ZStack {
            Color(red: 242 / 255, green: 248 / 255, blue: 255 / 255)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    MenuTopView(name: $name)
                    TaskScrollView()
                    StatisticsView()
                    
                    
                    Spacer()
                }
            }
            MenuBottomView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


