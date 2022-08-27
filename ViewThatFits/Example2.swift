//
// Created for ViewThatFits
// by Stewart Lynch on 2022-08-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct Example2: View {
    @State private var index = 1
    var body: some View {
        NavigationStack {
            VStack {
                Text("HStack -> ScrollView").font(.title)
                Stepper("\(index) Rectangle\(index > 1 ? "s" : "")",
                        value: $index,
                        in: 1...12)
                .font(.largeTitle)
                .padding()
                ViewThatFits {
                    RectangleViews2(index: $index)
                        .foregroundColor(.red)
                    ScrollView(.horizontal) {
                        RectangleViews2(index: $index)
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                Spacer()
            }
            .navigationTitle("Example 2")
        }
    }
}

struct RectangleViews2: View {
    @Binding var index: Int
    var body: some View {
        HStack {
            ForEach(1...index, id: \.self) { _ in
                Rectangle()
                    .frame(width: 150, height: 150)
            }
        }
    }
}

struct Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Example2()
    }
}
