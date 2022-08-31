//
//  AuthManager.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import Firebase
import SwiftUI

// TODO: Добавить локализованные ошибки на ру

final class AuthManager: ObservableObject {
    
    let firebaseAuth = Auth.auth()
    
    @Published var isSignInMode = true {
        willSet {
            self.email = ""
            self.password = ""
        }
    }
    
    @Published var email = ""
    @Published var password = ""
    @Published var isLogged = false
    
    @Published var error = false
    @Published var errorDescription = ""
    
    static let shared = AuthManager()

    private init() {
        if (firebaseAuth.currentUser != nil) {
            isLogged = true
        }
    }
    
    func logOut() {
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
            return
        }
          isLogged = false
    }
    
    
    func signIn() {
        firebaseAuth.signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    self.errorDescription = error?.localizedDescription ?? "Ошибка"
                    self.error = true
                } else {
                    print("success")
                    self.isLogged = true
                }
            }
        }
    func signUp() {
        
        firebaseAuth.createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                self.errorDescription = error?.localizedDescription ?? "Ошибка"
                self.error = true
                
            } else {
                print("succses")
                self.isLogged = true
            }
            
        }
    }

}
