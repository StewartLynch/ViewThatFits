//
// Created for ViewThatFits
// by Stewart Lynch on 2022-08-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct Example4: View {
    let sampleText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Nisl nisi scelerisque eu ultrices vitae auctor. Sed id semper risus in hendrerit gravida rutrum quisque non. Adipiscing at in tellus integer feugiat scelerisque. Volutpat est velit egestas dui id ornare arcu. Et leo duis ut diam quam nulla. Rhoncus est pellentesque elit ullamcorper. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem."
    @State private var partialSample = ""
    @State private var numChars = 0.0
    @State private var showText = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Expanding Text").font(.title)
                Slider(value: $numChars, in: 0...Double(sampleText.count))
                    .padding()
                ViewThatFits(in: .vertical) {
                    Text(partialSample)
                    Button("Show Full Text") {
                        showText.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                }
                    .frame(width: 240, height: 200)
                    .padding()
                    .border(.red, width: 3)
                Spacer()
            }
            .onChange(of: numChars, perform: { _ in
                partialSample = String(sampleText.prefix(Int(numChars)))
            })
            .sheet(isPresented: $showText, content: {
                Text(sampleText)
                    .padding()
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
            })
            .navigationTitle("Example 4")
        }
    }
}

struct Example4_Previews: PreviewProvider {
    static var previews: some View {
        Example4()
    }
}
