import SwiftUI

struct ChartLegendoid: View {
    @State private var isPresented = false
    @Environment(\.presentationMode) var presentationMode

    let color: Color
    let label: String

    var body: some View {
        HStack {
            Button(action: { isPresented.toggle() }) {
                Rectangle()
                    .foregroundColor(color)
                    .frame(width: 100, height: 10)
            }
            .buttonStyle(PlainButtonStyle())

            Text(label)
                .font(.subheadline)
        }.sheet(isPresented: $isPresented) {
            HStack {
                Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                }) {
                    Rectangle()
                        .foregroundColor(
                            Color(NSColor(calibratedWhite: 0.5, alpha: 1.0))
                        )
                        .frame(width: 100, height: 10)
                }
                .buttonStyle(PlainButtonStyle())

                Text(label)
                    .font(.subheadline)
                    .foregroundColor(
                        Color(NSColor(calibratedWhite: 0.5, alpha: 1.0))
                    )
            }
        }
    }
}

struct ChartLegendoid_Previews: PreviewProvider {
    static var previews: some View {
        ChartLegendoid(color: .blue, label: "Preview")
    }
}
