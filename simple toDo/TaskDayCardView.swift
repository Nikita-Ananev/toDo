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
                .frame(width: 140, height: 200)
            VStack {
                Text(String(count))
                    .font(.system(size: 125))
                Text(count.taskString())
                    .font(.system(size: 15))
                Text("на сегодня")
                    .font(.system(size: 10))
            }
            .foregroundColor(.white)
        }
    }
}

struct TaskDayCardView_Previews: PreviewProvider {
    static var previews: some View {
        TaskDayCardView(count: .constant(10))
    }
}
