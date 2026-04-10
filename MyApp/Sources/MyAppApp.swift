import SwiftUI
import DIContainer
import Print
import UIText

@main
struct MyAppApp: App {
    @State var container = DIContainer.makeAppContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: container.resolve(ContentViewModel.self))
                .environment(container)
        }
    }
}
