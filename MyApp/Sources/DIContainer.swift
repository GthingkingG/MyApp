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
import ContentData

extension DIContainer {
    
    @MainActor
    internal static func makeAppContainer() -> DIContainer {
        let container = DIContainer()
        
        //ContentData
        container.register(ContentRepository.self, scope: .singleton) { resolver in
            ContentRepositoryImpl()
        }
        
        container.register(GetContentUseCase.self) { resolver in
            GetContentUseCase(repository: resolver.resolve(ContentRepository.self))
        }
        
        container.register(SetContentUseCase.self) { resolver in
            SetContentUseCase(repository: resolver.resolve(ContentRepository.self))
        }
        
        //Input
        container.register(InputViewModel.self) { resolver in
            InputViewModel(setContentUseCase: resolver.resolve(SetContentUseCase.self))
        }
        
        
        //Output
        container.register(OutputViewModel.self) { resolver in
            OutputViewModel(getContentUseCase: resolver.resolve(GetContentUseCase.self))
        }
        
        //ContentViewModel
        container.register(ContentViewModel.self) { resolver in
            ContentViewModel(inputViewModel: resolver.resolve(InputViewModel.self), outputViewModel: resolver.resolve(OutputViewModel.self))
        }
        
        
        return container
    }
}
