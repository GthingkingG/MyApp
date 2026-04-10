//
//  SetInputUseCase.swift
//  UIText
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public struct SetInputUseCase {
    private let repository: InputRepository
    
    public init(repository: InputRepository) {
        self.repository = repository
    }
    
    @MainActor
    func execute(content: String) async throws -> Input {
        try await repository.setInput(content: content)
    }
}
