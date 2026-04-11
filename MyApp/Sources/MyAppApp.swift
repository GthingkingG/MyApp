import SwiftUI
import DIContainer
import Print
import UIText

@main
struct MyAppApp: App {
    @State internal var container = DIContainer.makeAppContainer()
    
    internal var body: some Scene {
        WindowGroup {
            ContentView(viewModel: container.resolve(ContentViewModel.self))
                .environment(container)
        }
    }
}
