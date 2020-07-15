import SwiftUI

struct ChartLegendoid: View {
    let color: Color
    let label: String

    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(color)
                .frame(width: 100, height: 10)

            Text(label).font(.subheadline)
        }
    }
}

struct ChartLegendoid_Previews: PreviewProvider {
    static var previews: some View {
        ChartLegendoid(color: .blue, label: "Preview")
    }
}
