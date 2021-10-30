//
//  BindingBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//


// SwiftUI Bootcamp #22:
// How to use the @Binding property wrapper

import SwiftUI

struct BindingBootCamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "This is title"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(title)
                ContentLayerView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}


struct ContentLayerView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String

    var body: some View {
        Button(action: {
            buttonTapped()
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10.0)
        })
    }
        
    func buttonTapped() {
        backgroundColor = Color.orange
        buttonColor = Color.green
        title = "This title is changed by button #1"
    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}
