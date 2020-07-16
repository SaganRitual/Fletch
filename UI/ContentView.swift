import SpriteKit
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var lineChartData: LineChartData

    var body: some View {
        GameView(scene: GameScene())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
