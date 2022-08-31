//
//  AuthView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI
import Firebase
import PopupView
struct AuthView: View {
    
    @ObservedObject var auth = AuthManager.shared
    @State private var viewSize = CGSize()
    
    var body: some View {
        if auth.isLogged {
            ContentView()
        } else {
            ZStack {
                if auth.isSignInMode {
                    Color(red: 255 / 255, green: 236 / 255, blue: 223 / 255)
                } else {
                    Color(red: 208 / 236, green: 248 / 255, blue: 255 / 255)
                }
                VStack {
                    ZStack {
                        Image("loginImage")
                            .resizable()
                            .scaledToFit()
                            .opacity(auth.isSignInMode ? 0 : 1)
                        Image("registerImage")
                            .resizable()
                            .scaledToFit()
                            .opacity(auth.isSignInMode ? 1 : 0)
                    }
                    .frame(height:300)
                    .cornerRadius(16)
                    .padding()
                    .onTapGesture {
                        withAnimation (.spring()) {
                            auth.isSignInMode.toggle()
                            
                        }
                    }
                    //ToggleLoginView(isSignIn: $auth.isSignInMode)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250, height: 70)
                        .padding()
                    
                    LoginTextFieldView(text: $auth.email, image: "at", staticText: "Email")
                    LoginTextFieldView(text: $auth.password, image: "lock", staticText: "Password")
                    
                    Button {
                        if auth.isSignInMode {
                            auth.signIn()
                        } else {
                            auth.signUp()
                        }
                    } label: {
                        ZStack {
                            Text(auth.isSignInMode ? "Войти" : "Зарегистрироваться" )
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                                .background(.blue)
                                .cornerRadius(10)
                                .transition(.opacity)
                            
                        }
                    }
                    
                    Spacer()
                    
                }
            }
            .edgesIgnoringSafeArea(.all)
            .popup(isPresented: $auth.error, autohideIn: 1.5) {
                Text(auth.errorDescription)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 100)
                    .background(Color(red: 0.85, green: 0.8, blue: 0.95))
                    .cornerRadius(10.0)
        }
        }
        
    }
}

struct AuthView_Previews: PreviewProvider {
    
    static var previews: some View {
        AuthView()
    }
}

struct ToggleLoginView: View {
    @Binding var isSignIn: Bool
    @State var size = CGSize()
    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(isSignIn ? .blue: .orange)
            Capsule()
                .frame(width: abs(size.width / 2), height: abs(size.height - 4) )
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.14), radius: 4, x: 0, y: 2)
                .offset(x: isSignIn ? -size.width / 4 - 2: size.width / 4 + 2)
            HStack {
                Text("Войти")
                    .font(.system(size: 20))
                    .bold()
                    .frame(width: size.width / 2, height: size.height)
                    .foregroundColor(isSignIn ? .black : .white)
                    .onTapGesture {
                        withAnimation {
                            isSignIn = true
                            
                        }
                    }
                Text("Регистрация")
                    .font(.system(size: 20))
                    .bold()
                    .frame(width: size.width / 2, height: size.height)
                    .foregroundColor(isSignIn ? .white : .black)
                    .onTapGesture {
                        withAnimation {
                            isSignIn = false
                            
                        }                        }
            }
        }
        .readSize(onChange: { selfSize in
            size = selfSize
        })
    }
}

struct LoginTextFieldView: View {
    @Binding var text: String
    var image: String
    var staticText: String
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor((Color(UIColor.lightGray)))
            VStack {
                TextField(staticText, text: $text)
                    .textFieldStyle(.plain)
                Divider()
                    .frame(height: 1)
                    .background(Color(UIColor.lightGray))
            }
        }
        .padding()
    }
}
