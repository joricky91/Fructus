//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 05/12/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 16)
    }
}

#Preview {
    OnboardingView()
}
