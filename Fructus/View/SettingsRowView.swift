//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 06/12/23.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if content != nil {
                    Text(content ?? "")
                } else if linkLabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https://\(linkDestination ?? "")")!) {
                        Text(linkLabel ?? "")
                    }
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "Jonathan Ricky")
        
        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
    }
}
