import SpriteKit
import SwiftUI
import Charts
import Shapes

struct LineChartView: View {
    @EnvironmentObject var lineChartData: LineChartData

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    ChartLegend(descriptors: [
                        (Color.blue, "Current Maximum"),
                        (Color.green, "Current Average"),
                        (Color(NSColor.cyan), "Current Median")
                    ])
                }

                Spacer()
                Text("Age").font(.title).offset(y: 10)
                Spacer()

                VStack(alignment: .leading) {
                    ChartLegend(descriptors: [
                        (Color.purple, "All-time Maximum"),
                        (Color.red, "All-time Average"),
                        (Color.yellow, "All-time Median")
                    ])
                }
            }.padding(.top, 10)

            HStack {
                VStack {
                    AxisLabels(.vertical, data: 0..<10, id: \.self) {
                        Text("\((10 - 1) - $0)")
                            .fontWeight(.bold)
                            .font(Font.system(size: 8))
                            .foregroundColor(.secondary)
                    }
                    .frame(width: 20)

                    Rectangle().foregroundColor(.clear).frame(width: 20, height: 0)
                }

                VStack {
                    Rectangle().foregroundColor(.clear).frame(width: 20, height: 10)

                    ZStack {
//                        Chart(data: lineChartData.theData[0])
//                            .chartStyle(
//                                LineChartStyle(.quadCurve, lineColor: .blue, lineWidth: 2)
//                            )
//                            .padding()
//
//                        Chart(data: lineChartData.theData[1])
//                            .chartStyle(
//                                LineChartStyle(.quadCurve, lineColor: .green, lineWidth: 2)
//                            )
//                            .padding()
//
//                        Chart(data: lineChartData.theData[2])
//                            .chartStyle(
//                                LineChartStyle(.quadCurve, lineColor: Color(NSColor.cyan), lineWidth: 2)
//                            )
//                            .padding()
//
                        Chart(data: lineChartData.theData[3])
                            .chartStyle(
                                LineChartStyle(.quadCurve, lineColor: .purple, lineWidth: 2)
                            )
                            .padding()

                        Chart(data: lineChartData.theData[4])
                            .chartStyle(
                                LineChartStyle(.quadCurve, lineColor: .red, lineWidth: 2)
                            )
                            .padding()

                        Chart(data: lineChartData.theData[5])
                            .chartStyle(
                                LineChartStyle(.quadCurve, lineColor: .yellow, lineWidth: 2)
                            )
                            .padding()
                            .background(
                                GridPattern(
                                    horizontalLines: 10, verticalLines: 0
                                )
                                .stroke(
                                    Color.white.opacity(0.1),
                                    style: .init(lineWidth: 2, lineCap: .round)
                                )
                            )
                    }

                    Rectangle().foregroundColor(.clear).frame(width: 20, height: 20)
                }
                .layoutPriority(1)
            }
        }
    }

}


struct LineChartView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView()
    }
}

