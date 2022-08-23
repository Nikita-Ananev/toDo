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





struct MenuTopView: View {
    @Binding var name: String
    var body: some View {
        HStack {
            HStack {
                Text("Привет,")
                    .fontWeight(.thin)
                Text(name)
                    .fontWeight(.bold)
                
            }
            Spacer()
            Image(systemName: "figure.wave" )
                .font(.system(size: 25))
        }
        .padding()
    }
}

struct TaskScrollView: View {
    
//Сделать скролл

    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 140, height: 250)
                VStack {
                    Text("8")
                        .font(.system(size: 125))
                    Text("Задач")
                        .font(.system(size: 15))
                    Text("на сегодня")
                        .font(.system(size: 10))
                }
                .foregroundColor(.white)
            }
            .padding()
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 140, height: 250)
                VStack {
                    Text("1")
                        .font(.system(size: 125))
                    Text("Задача")
                        .font(.system(size: 15))
                    Text("на завтра")
                        .font(.system(size: 10))
                }
                .foregroundColor(.white)
            }
            .padding()
            
            Spacer()
        }
    }
}
