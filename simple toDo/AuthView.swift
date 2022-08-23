//
//  AuthView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI

struct AuthView: View {
    @ObservedObject var auth = AuthManager.shared
    
    var body: some View {
        ZStack {
            if auth.isSignInMode {
                Color(red: 255 / 255, green: 236 / 255, blue: 223 / 255)
                    .edgesIgnoringSafeArea(.all)
            } else {
                Color(red: 208 / 236, green: 248 / 255, blue: 255 / 255)
                    .edgesIgnoringSafeArea(.all)
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
                .frame(height:200)
                .cornerRadius(16)
        
                .padding()
                
                
                ZStack {
                    Capsule()
                        .foregroundColor(auth.isSignInMode ? .blue: .orange)
                    Capsule()
                        .frame(width:150, height:80)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.14), radius: 4, x: 0, y: 2)
                        .offset(x:auth.isSignInMode ? -75: 75)
                    HStack {
                        Text("Войти")
                            .font(.system(size: 20))
                            .bold()
                            .frame(width:150, height:80)
                            .foregroundColor(auth.isSignInMode ? .black : .white)
                            .onTapGesture {
                                withAnimation {
                                    auth.isSignInMode = true
                                    
                                }
                            }
                        Text("Регистрация")
                            .font(.system(size: 20))
                            .bold()
                            .frame(width:150, height:80)
                            .foregroundColor(!auth.isSignInMode ? .black : .white)
                            .onTapGesture {
                                withAnimation {
                                    auth.isSignInMode = false
                                    
                                }                        }
                    }
                }
                .frame(width:300,height:90)
                TextField("Email", text: $auth.email)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 250, height: 50)
                    .padding()

                TextField("Password", text: $auth.password)
                    .frame(width: 250, height: 50)

                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                Spacer()

            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
