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
        VStack {
            MenuTopView(name: $name)
            TaskScrollView()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





