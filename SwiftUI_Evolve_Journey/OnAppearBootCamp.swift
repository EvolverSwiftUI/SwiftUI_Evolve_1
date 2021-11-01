//
//  OnAppearBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

// SwiftUI Bootcamp #46:
// How to use onAppear and onDisappear

import SwiftUI

struct OnAppearBootCamp: View {
    
    @State var myText: String = "Start Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending Text!"
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnAppearBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootCamp()
    }
}
