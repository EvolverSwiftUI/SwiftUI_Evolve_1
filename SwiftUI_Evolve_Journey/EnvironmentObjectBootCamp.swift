//
//  EnvironmentObjectBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 11/1/21.
//



import SwiftUI

// ObservedObject
// SateObject
// EnvironmentObject


class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPHone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootCamp: View {
    
    @StateObject var viewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id:\.self) { item in
                    NavigationLink(
                        destination: SecondDetailView(selectedItem: item),
                        label: {
                            Text(item)
                                .font(.headline)
                        })
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct SecondDetailView: View {
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            NavigationLink(
                destination: ThirdScreen(),
                label: {
                    Text(selectedItem)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
        }
    }
}

struct ThirdScreen: View {
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel

    var body: some View {
        ZStack {
            //Color.green.edgesIgnoringSafeArea(.all)
            LinearGradient(
                gradient: Gradient(colors: [Color.red, Color.blue, Color.green]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ForEach(viewModel.dataArray, id: \.self) { name in
                    Text(name)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
struct EnvironmentObjectBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootCamp()
    }
}
