//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 05/12/23.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [FruitModel] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 16)
    }
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
