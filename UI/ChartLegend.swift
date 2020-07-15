//
//  ChartLegend.swift
//  Fletch
//
//  Created by Rob Bishop on 7/14/20.
//  Copyright © 2020 Boring Software. All rights reserved.
//

import SwiftUI

struct ChartLegend: View {
    let descriptors: [(Color, String)]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<descriptors.count) { ss in
                HStack {
                    Rectangle()
                        .foregroundColor(self.descriptors[ss].0)
                        .frame(width: 100, height: 10)

                    Text(self.descriptors[ss].1).font(.subheadline)
                }
            }
        }.padding(.leading, 10).padding(.trailing, 10)
    }
}

struct ChartLegend_Previews: PreviewProvider {
    static var previews: some View {
        ChartLegend(descriptors: [
            (Color.blue, "Current Maximum"),
            (Color.green, "Current Average"),
            (Color(NSColor.cyan), "Current Median")
        ])
    }
}
