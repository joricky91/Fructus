//
//  SectionOne.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 06/12/23.
//

import SwiftUI

struct SectionOne: View {
    var body: some View {
        GroupBox(
            label:
                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        ) {
            Divider()
                .padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(10)
                
                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sourcse of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    SectionOne()
}
