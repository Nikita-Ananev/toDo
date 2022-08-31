//
//  MenuTopView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI


struct MenuTopView: View {
    @Binding var name: String
    var body: some View {
        HStack {
            HStack {
                Text("Привет,")
                    .fontWeight(.thin)
                HStack(spacing: 0) {
                    Text(name)
                        .fontWeight(.bold)
                    Text("!")
                        .fontWeight(.thin)
                }
            }
            Spacer()
            Image(systemName: "figure.wave" )
                .font(.system(size: 25))
                .onTapGesture {
                    AuthManager.shared.logOut()
                }
        }
        .padding()
    }
}


struct MenuTopView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTopView(name: .constant("Nikita"))
    }
}
