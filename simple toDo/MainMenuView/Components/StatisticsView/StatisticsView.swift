//
//  StatisticsView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI


struct StatisticsView: View {
    var body: some View {
        VStack {
            SectionNameView(name: "Статистика")
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 246 / 255, green: 248 / 255, blue: 254 / 255))
                        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(1), radius: 1, x: -3, y: -3)
                    Text("Тут сделаем график")
                        .bold()
                        .foregroundColor(Color(red: 54 / 255, green: 60 / 255, blue: 92 / 255))
                }
                VStack {
                    Text("Прошедшая неделя")
                        .font(.system(size: 13))
                        .bold()
                        .padding(10)
                    HStack {
                        Text("Решено:")
                        Text("10")
                            .bold()
                        Spacer()
                        
                    }
                    HStack {
                        Text("Отложено:")
                        Text("10")
                            .bold()
                        Spacer()
                        
                    }
                    Spacer()
                }
                .padding()
            }
            .frame(height: 150)
            .padding(.horizontal)
        }
    }
}


struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
