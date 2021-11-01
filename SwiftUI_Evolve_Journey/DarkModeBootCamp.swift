//
//  DarkModeBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

// SwiftUI Bootcamp #44:
// How to adapt for Dark Mode


import SwiftUI

struct DarkModeBootCamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Color - Primary")
                        .foregroundColor(.primary)
                    Text("Color - Secondary")
                        .foregroundColor(.secondary)
                    Text("Color - Black")
                        .foregroundColor(.black)
                    Text("Color - White")
                        .foregroundColor(.white)
                    Text("Color - Red")
                        .foregroundColor(.red)
                    Text("Color - Globally Adaptive")
                        .foregroundColor(Color("Adaptive Color"))
                    Text("Color - Locally Adaptive")
                        .foregroundColor( colorScheme == .light ? .orange : .blue)
                }
            }
            .navigationTitle("Dark Mode Bootcamp!")
        }
    }
}

struct DarkModeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            DarkModeBootCamp()
                .preferredColorScheme(.light)
            DarkModeBootCamp()
                .preferredColorScheme(.dark)
        }
    }
}
