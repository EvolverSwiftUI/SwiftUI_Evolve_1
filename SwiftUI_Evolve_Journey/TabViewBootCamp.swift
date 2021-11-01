//
//  TabViewBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

// SwiftUI Bootcamp #43:
// How to use TabView (DefaultTabViewStyle and PageTabViewStyle)

import SwiftUI

struct TabViewBootCamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons = ["heart.fill", "person.fill", "house.fill", "globe"]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(50)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView {
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.purple)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.blue)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
//        }
//        .frame(height: 300)
//        .tabViewStyle(PageTabViewStyle())
        
        
        
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("BROWSER TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browser")
//                }
//                .tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//       }
//        .accentColor(.red)
    }
}

struct TabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootCamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .foregroundColor(.red)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                })
            }
        }
    }
}
