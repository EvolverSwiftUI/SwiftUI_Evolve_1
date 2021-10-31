//
//  PickerBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #38:
// How to use Picker and PickerStyle

import SwiftUI

struct PickerBootCamp: View {
    
    @State var selection: String = "Most Liked"
    
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl
            .appearance()
            .selectedSegmentTintColor = UIColor.red
       
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            
        ]
        
        UISegmentedControl
            .appearance()
            .setTitleTextAttributes( attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            })
            .pickerStyle(SegmentedPickerStyle())
//            .background(Color.blue)
        
//        Picker(
//            selection: $selection,
//            label:
//                HStack {
//                    Text("Filter:")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10.0)
//                .shadow(
//                    color: Color.blue.opacity(0.3),
//                    radius: 10,
//                    x: 0.0, y: 10.0
//                )
//           ,
//            content: {
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    }
//                    .tag(option)
//                }
//            })
            .pickerStyle(MenuPickerStyle())
        
        
//        VStack {
//            HStack {
//                Text("Age: ")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18...100, id: \.self) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                })
//                .pickerStyle(WheelPickerStyle())
//                //.background(Color.gray.opacity(0.3))
//        }
    }
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()
    }
}
