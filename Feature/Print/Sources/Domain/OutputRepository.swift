//
//  OutputRepository.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public protocol OutputRepository: Sendable {
    func printOutput(input: String) async throws -> Output
}
