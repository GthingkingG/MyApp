//
//  PrintOutputUseCase.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public struct PrintOutputUseCase {
    private let repository: OutputRepository
    
    init(repository: OutputRepository) {
        self.repository = repository
    }
    
    func execute(input: String) async throws -> Output {
        try await repository.printOutput(input: input)
    }
}
