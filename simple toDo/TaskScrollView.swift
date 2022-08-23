//
//  TaskScrollView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI

struct TaskScrollView: View {
    @State var count = 1
//Сделать скролл

    var body: some View {
        VStack {
            SectionNameView(name: "Ближайшая неделя")
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0...7, id: \.self) { index in
                        TaskDayCardView(count: $count)
                    }
                }
                .padding(.horizontal)

            }
        }
    }
}


struct TaskScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TaskScrollView()
    }
}



