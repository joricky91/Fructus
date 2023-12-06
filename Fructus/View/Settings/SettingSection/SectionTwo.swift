//
//  SectionTwo.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 06/12/23.
//

import SwiftUI

struct SectionTwo: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"), content: {
            Divider()
                .padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                .padding(.vertical, 8)
                .frame(minHeight: 60)
                .layoutPriority(1)
                .font(.footnote)
                .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
                if isOnboarding {
                    Text("Restarted".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                } else {
                    Text("Restart".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(Color.secondary)
                }
            }
            .padding()
            .background(Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
        })
    }
}

#Preview {
    SectionTwo()
}
