//
//  ContentView.swift
//  spotifyUI
//
//  Created by chevy on 9/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .foregroundStyle(.blue)
            Text("Chevy Chiem")
                .bold()
        }
    }
}

#Preview {
    ContentView()
}
