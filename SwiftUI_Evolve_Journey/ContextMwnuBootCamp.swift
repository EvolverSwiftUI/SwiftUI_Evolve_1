//
//  ContextMwnuBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #34:
// How to use ContextMenu

import SwiftUI

struct ContextMwnuBootCamp: View {
    @State var bgColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftul Thinking")
                .font(.headline)
            Text("About Context Menu Bootcamp")
        }        .font(.subheadline)

        .foregroundColor(.white)
        .padding(30)
        .background(bgColor.cornerRadius(30))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                bgColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            Button(action: {
                bgColor = .red
            }, label: {
                Text("Report post")
            })
            Button(action: {
                bgColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        }))
    }
}

struct ContextMwnuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMwnuBootCamp()
    }
}
