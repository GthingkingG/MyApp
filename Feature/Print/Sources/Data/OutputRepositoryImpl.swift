//
//  OutputRepositoryImpl.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

final class OutputRepositoryImpl: OutputRepository, Sendable {
    
    func printOutput(input: String) async throws -> Output {
        let output = Output(content: input)
        return output
    }
}
