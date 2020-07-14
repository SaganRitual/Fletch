//
//  ContentView.swift
//  Fletch
//
//  Created by Rob Bishop on 7/13/20.
//  Copyright © 2020 Boring Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)

            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .animation(Animation.default)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
