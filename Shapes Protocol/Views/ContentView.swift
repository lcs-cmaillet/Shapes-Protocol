//
//  ContentView.swift
//  Shapes Protocol
//
//  Created by Collin Maillet on 2024-11-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Ribbon()
                .frame(height:100)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
