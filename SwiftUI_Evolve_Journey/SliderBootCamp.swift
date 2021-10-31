//
//  SliderBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #42:
// How to use Slider

import SwiftUI

struct SliderBootCamp: View {
    
    @State var sliderValue: Double = 1
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Slider Value")
            Text(
                String(format: "%.1f", sliderValue)
                //"\(sliderValue)"
            )
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 0...100)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                })
                .accentColor(.red)
        }
    }
}

struct SliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootCamp()
    }
}
