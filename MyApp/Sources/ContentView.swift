import SwiftUI
import Print
import UIText

public struct ContentView: View {
    public init() {}

    public var body: some View {
        VStack {
            OutputView(viewModel: <#OutputViewModel#>)
            Spacer()
            InputView(viewModel: <#InputViewModel#>)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Text("Q!11")
        }        
    }
}
