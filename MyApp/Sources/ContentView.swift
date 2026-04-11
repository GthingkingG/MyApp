import SwiftUI
import Print
import UIText
import DIContainer
import Parsing

public struct ContentView: View {
    public init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }
    
    @State private var viewModel: ContentViewModel
    
    public var body: some View {
        VStack {
            InputView(viewModel: viewModel.inputViewModel)
            
            Spacer()
            
            HStack {
                OutputView(viewModel: viewModel.outputViewModel)
                Spacer()
                ParsingView(viewModel: viewModel.parsingViewModel)
            }
        }
        .padding()
    }
}

