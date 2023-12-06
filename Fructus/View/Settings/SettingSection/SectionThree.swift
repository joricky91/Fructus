//
//  SectionThree.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 06/12/23.
//

import SwiftUI

struct SectionThree: View {
    var body: some View {
        GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
            SettingsRowView(name: "Developer", content: "Jonathan Ricky")
            
            SettingsRowView(name: "Designer", content: "Robert Petras")
            
            SettingsRowView(name: "Compatibility", content: "iOS 14")
            
            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            
            SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
            
            SettingsRowView(name: "SwiftUI", content: "2.0")
            
            SettingsRowView(name: "Version", content: "1.1.0")
        })
    }
}

#Preview {
    SectionThree()
}
