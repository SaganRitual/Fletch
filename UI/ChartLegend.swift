//
//  ChartLegend.swift
//  Fletch
//
//  Created by Rob Bishop on 7/14/20.
//  Copyright © 2020 Boring Software. All rights reserved.
//

import SwiftUI

struct ChartLegend: View {
    let groupName: String
    let descriptors: [(Color, String)]

    var body: some View {
        VStack(alignment: .leading) {
            Text(groupName)
                .font(.body)
                .padding(.top, 5)
                .padding(.bottom, -10)
                .padding(.leading, 10)

            HStack {
                VStack {
                    ForEach(0..<descriptors.count) { ss in
                        Rectangle()
                            .foregroundColor(self.descriptors[ss].0)
                            .frame(width: 100, height: 10)
                    }
                }

                VStack(alignment: .trailing) {
                    ForEach(0..<descriptors.count) { ss in
                        Text(self.descriptors[ss].1).font(.subheadline)
                    }
                }
            }.padding(.leading, 10).padding(.trailing, 10)
        }
    }
}

struct ChartLegend_Previews: PreviewProvider {
    static var previews: some View {
        ChartLegend(
            groupName: "Current",
            descriptors: [
                (Color.blue, "Maximum"),
                (Color.green, "Average"),
                (Color(NSColor.cyan), "Median")
            ]
        )
    }
}
