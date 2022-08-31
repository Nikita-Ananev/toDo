//
//  simple_toDoApp.swift
//  simple toDo
//
//  Created by Никита Ананьев on 22.08.2022.
//

import SwiftUI
import Firebase

@main
struct simple_toDoApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
