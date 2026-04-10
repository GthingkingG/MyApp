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
    
    @MainActor
    static func makeAppContainer() -> DIContainer {
        let container = DIContainer()
        
        container.register(InputRepository.self) { resolver in
            InputRepositoryImpl()
        }
        
        container.register(SetInputUseCase.self) { resolver in
            SetInputUseCase(repository: resolver.resolve(InputRepository.self))
        }
        
        container.register(InputViewModel.self) { resolver in
            InputViewModel(setInputUseCase: resolver.resolve(SetInputUseCase.self))
        }
        
        container.register(OutputRepository.self) { resolver in
            OutputRepositoryImpl()
        }
        
        container.register(PrintOutputUseCase.self) { resolver in
            PrintOutputUseCase(repository: resolver.resolve(OutputRepository.self))
        }
        
        
        container.register(OutputViewModel.self) { resolver in
            OutputViewModel(printOutputUseCase: resolver.resolve(PrintOutputUseCase.self))
        }
        
        container.register(ContentViewModel.self) { resolver in
            ContentViewModel(inputViewModel: resolver.resolve(InputViewModel.self), outputViewModel: resolver.resolve(OutputViewModel.self))
        }
        
        
        return container
    }
}
