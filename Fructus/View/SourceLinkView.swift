//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Jonathan Ricky Sandjaja on 05/12/23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                
                Spacer()
                
                Link(destination: URL(string: "https://www.wikipedia.org")!) {
                    Text("Wikipedia")
                }
                
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
}
