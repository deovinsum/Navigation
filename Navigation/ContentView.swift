// Created by deovinsum

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("\(i)")
            }
            .navigationTitle("Hello world!")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    ContentView()
}
