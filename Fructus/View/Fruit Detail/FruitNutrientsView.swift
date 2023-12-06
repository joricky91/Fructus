//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 05/12/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: FruitModel
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 4)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
