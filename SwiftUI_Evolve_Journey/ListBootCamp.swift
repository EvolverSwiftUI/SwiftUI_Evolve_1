//
//  ListBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #31:
// How to use a List to edit, move, add, and delete items

import SwiftUI

struct ListBootCamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header:
                            HStack {
                                Text("Fruits")
                                Image(systemName: "flame.fill")
                            }
                            .font(.headline)
                            .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            //.frame(maxWidth: .infinity, maxHeight: .infinity)
                            //.background(Color.pink)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { vegitable in
                        Text(vegitable.capitalized)
                    }
                }
            }
            .accentColor(.green)
//            .listStyle(DefaultListStyle())
//            .listStyle(GroupedListStyle())
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems( leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut")
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
