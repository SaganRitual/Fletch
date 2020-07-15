import SpriteKit
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var lineChartData: LineChartData

    var body: some View {
        HStack {
            LineChartView().environmentObject(lineChartData)
        }.frame(width: 600, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
