//
//  DIContainer.swift
//  MyApp
//
//  Created by One on 4/8/26.
//

import Foundation
import DIContainer
import Print
import UIText

extension DIContainer {
    static func makeAppContainer() -> DIContainer {
        let container = DIContainer()
        
        container.register(OutputViewModel.self) { resolver in
            OutputViewModel(printOutputUseCase: <#PrintOutputUseCase#>)
        }
        
        return container
    }
}
