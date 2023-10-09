//
//  ContentView.swift
//  introappen
//
//  Created by don falcone on 2023-10-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Tjena sadiiq!")
                .font(.title)
                .foregroundColor(Color("fancycolor"))
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
