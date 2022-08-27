//
// Created for ViewThatFits
// by Stewart Lynch on 2022-08-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct Example1: View {
    var body: some View {
        NavigationStack {
            ViewThatFits {
                HStack {
                    RectangleViews()
                }
                VStack {
                    RectangleViews()
                }
            }
                .navigationTitle("Example 1")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Example1()
    }
}

struct RectangleViews: View {
    var body: some View {
        ForEach(1...3, id: \.self) { _ in
            Rectangle()
                .frame(width: 175, height: 175)
        }
    }
}
