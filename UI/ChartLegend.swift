import SwiftUI

struct ChartLegend: View {
    let groupName: String
    let descriptors: [(Color, String)]

    @State private var isShowingTop = true
    @State private var isShowingMiddle = false
    @State private var isShowingBottom = true

    func buttonClicked(_ buttonSS: Int) {
        switch buttonSS {
        case 0: isShowingTop.toggle()
        case 1: isShowingMiddle.toggle()
        case 2: isShowingBottom.toggle()
        default: fatalError()
        }
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(groupName)
                .font(.headline)
                .padding(.top, 5)
                .padding(.bottom, -10)
                .padding(.leading, 10)

            HStack {
                VStack {
                    ForEach(0..<descriptors.count) { ss in
                        Button(action: { buttonClicked(ss) }) {
                            Rectangle()
                                .foregroundColor(self.descriptors[ss].0)
                                .frame(width: 100, height: 10)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }

                VStack(alignment: .trailing) {
                    ForEach(0..<descriptors.count) { ss in
                        Text(self.descriptors[ss].1)
                            .font(.subheadline)
                    }
                }
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom, 5)
        }
    }
}

struct ChartLegend_Previews: PreviewProvider {
    static var previews: some View {
        ChartLegend(
            groupName: "Current",
            descriptors: [
                (Color.green, "Average"),
                (Color(NSColor.cyan), "Median"),
                (Color.blue, "Maximum")
            ]
        )
    }
}
