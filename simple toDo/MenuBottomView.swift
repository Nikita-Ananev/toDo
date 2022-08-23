//
//  MenuBottomView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI


struct MenuBottomView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Button {
                    print("Открыть календарь")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.black)
                        HStack {
                            Image(systemName: "calendar")
                                .font(.system(size: 34))
                                .foregroundColor(.white)
                            Text("22 Авг")
                                .font(.system(size: 24))
                                .bold()
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 200, height: 95)
                    
                }
                Spacer()
                Button {
                    print("New")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.black)
                        Image(systemName: "plus")
                            .font(.system(size: 34))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 95)
                }
                
            }
            .padding()
            
        }
    }
}


struct MenuBottomView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBottomView()
    }
}
