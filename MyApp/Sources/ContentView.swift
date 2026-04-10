import SwiftUI
import Print
import UIText
import DIContainer

public struct ContentView: View {
    public init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }
    
    @State private var viewModel: ContentViewModel
    
    public var body: some View {
        VStack {
            InputView(viewModel: viewModel.inputViewModel)
            
            Spacer()
            
            OutputView(viewModel: viewModel.outputViewModel)
        }
    }
}

