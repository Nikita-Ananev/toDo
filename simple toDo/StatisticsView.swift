//
//  StatisticsView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI


struct StatisticsView: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                Text("Тут сделаем график")
                    .bold()
                    .foregroundColor(.white)
            }
            VStack {
                Text("Прошедшая неделя")
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
        }
        .frame(height: 150)
        .padding()
    }
}


struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
