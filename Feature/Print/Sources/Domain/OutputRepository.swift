//
//  OutputRepository.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

protocol OutputRepository: Sendable {
    func printOutput(input: String) async throws -> Output
}
