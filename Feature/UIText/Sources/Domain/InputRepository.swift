//
//  InputRepository.swift
//  UIText
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public protocol InputRepository: Sendable {
    func setInput(content: String) async throws -> Input
}
