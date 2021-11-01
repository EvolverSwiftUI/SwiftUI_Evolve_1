//
//  ViewModelBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

// SwiftUI Bootcamp #50:
// How to use @ObservableObject and @StateObject

import SwiftUI

struct FruitModel: Identifiable {
    
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        
        let fruit1 = FruitModel(name: "Oranges", count: 40)
        let fruit2 = FruitModel(name: "Apples", count: 400)
        let fruit3 = FruitModel(name: "Bananas", count: 500)
        let fruit4 = FruitModel(name: "Mangos", count: 30)

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.fruits.append(fruit4)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }

}

struct ViewModelBootCamp: View {
    
    // @StateObject -> USE THIS ON CREATION/INIT
    // @ObservedObject -> USE THIS FOR SUBVIEWS
   @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text(fruit.name)
                            Spacer()
                            Text("\(fruit.count)")
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                NavigationLink(
                    destination: DetailsView(fruitViewModel: fruitViewModel),
                    label: {
                        Image(systemName: "arrow.right")
                            .font(.largeTitle)
                    })
            )
        }
//        .onAppear {
//            fruitViewModel.getFruits()
//        }
    }
}

struct DetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()
//        DetailsView()
    }
}
