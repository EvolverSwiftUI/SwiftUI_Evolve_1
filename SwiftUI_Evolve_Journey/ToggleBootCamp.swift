//
//  ToggleBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #37:
// How to use a Toggle (also known as a switch)

import SwiftUI

struct ToggleBootCamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                        .foregroundColor(.black)
                })
                .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))))
//                .background(Color.red)
            Spacer()
        }
        .padding(.horizontal, 100)

    }
}

struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}
