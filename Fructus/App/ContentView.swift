//
//  ContentView.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    var fruits: [FruitModel] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
        } // End of Navigation
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
