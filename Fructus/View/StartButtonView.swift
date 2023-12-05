//
//  StartButtonView.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 05/12/23.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        Button {
            print("Exit the onboarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
}
