// Created by deovinsum

import SwiftUI

struct ContentView: View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
                List {
                    ForEach(0..<5) { i in
                        NavigationLink("Select Int value \(i)", value: i)
                    }
                    ForEach(0..<5) { i in
                        NavigationLink("Select String value \(i)", value: String(i))
                    }
                }
                .toolbar {
                    Button("Push 556") {
                        path.append(556)
                    }
                    Button("Push Hello") {
                        path.append("Hello")
                    }
                }
                .navigationDestination(for: Int.self) { selection in
                    Text("Your selection \(selection)")
                }
                .navigationDestination(for: String.self) { selection in
                    Text("Your selection \(selection)")
                }
        }
    }
}

#Preview {
    ContentView()
}
