//
//  SetContentUseCase.swift
//  ContentData
//
//  Created by One on 4/10/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public struct SetContentUseCase {
    private let repository: ContentRepository
    
    public init(repository: ContentRepository) {
        self.repository = repository
    }
    
    @MainActor
    public func execute(input: String) async throws {
        try await repository.setContent(input: input)
    }
}
