//
// Created for ViewThatFits
// by Stewart Lynch on 2022-08-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct Example3: View {
    @State private var width: CGFloat = 200
    var body: some View {
        NavigationStack {
            VStack {
                Text("Avoid Truncating Text").font(.title)
                Slider(value: $width, in: 60...200)
                    .padding()
                NewButton()
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .frame(width: width)
                    .border(Color.primary)
                Spacer()
            }
            .navigationTitle("Example 3")
        }
    }
}

struct NewButton: View {
    var body: some View {
        ViewThatFits {
            Button("New Widget") {}
            Button("New") {}
            Button {} label: {
                Image(systemName: "plus.circle.fill")
            }
        }
    }
}

struct Example3_Previews: PreviewProvider {
    static var previews: some View {
        Example3()
    }
}
