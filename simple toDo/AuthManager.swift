//
//  AuthManager.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import Firebase
import SwiftUI

final class AuthManager: ObservableObject {
    
    let firebaseAuth = Auth.auth()
    
    @Published var isSignInMode = true
    
    @Published var email = ""
    @Published var password = ""
    @Published var isLogged = false
    
    
    static let shared = AuthManager()

    private init() {
        
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
                    print(error?.localizedDescription ?? "")
                } else {
                    print("success")
                    self.isLogged = true
                }
            }
        }
    func signUp() {
        
    }

}
