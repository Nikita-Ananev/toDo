//
//  SectionNameView.swift
//  simple toDo
//
//  Created by Никита Ананьев on 23.08.2022.
//

import SwiftUI

struct SectionNameView: View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
                .bold()
                .font(.system(size: 35))
            Spacer()
        }
        .padding(.horizontal, 35)
    }
}

struct SectionNameView_Previews: PreviewProvider {
    static var previews: some View {
        SectionNameView(name: "Статистика")
    }
}
