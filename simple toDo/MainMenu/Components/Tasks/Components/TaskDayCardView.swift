//
//  TaskDayCardView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI

struct TaskDayCardView: View {
    @Binding var count: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 246 / 255, green: 248 / 255, blue: 254 / 255))
                .frame(width: 140, height: 200)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(1), radius: 1, x: -3, y: -3)
            VStack {
                Text(String(count))
                    .font(.system(size: 125))
                Text(count.taskString())
                    .font(.system(size: 20))
                Text("на сегодня")
                    .font(.system(size: 15))
            }.foregroundColor(Color(red: 54 / 255, green: 60 / 255, blue: 92 / 255))
        }
    }
}

struct TaskDayCardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(red: 242 / 255, green: 248 / 255, blue: 255 / 255)
                .edgesIgnoringSafeArea(.all)
            
            TaskDayCardView(count: .constant(10))
            
        }
    }
}
