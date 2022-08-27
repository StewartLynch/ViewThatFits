//
// Created for ViewThatFits
// by Stewart Lynch on 2022-08-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct StartTab: View {
    var body: some View {
        TabView {
            Example1()
                .tabItem {
                    Label("Example 1", systemImage: "1.circle.fill")
                }
            Example2()
                .tabItem {
                    Label("Example 2", systemImage: "2.circle.fill")
                }
            Example3()
                .tabItem {
                    Label("Example 3", systemImage: "3.circle.fill")
                }
            Example4()
                .tabItem {
                    Label("Example 4", systemImage: "4.circle.fill")
                }
        }
    }
}

struct StartTab_Previews: PreviewProvider {
    static var previews: some View {
        StartTab()
    }
}
