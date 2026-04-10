//
//  ContentRepository.swift
//  ContentData
//
//  Created by One on 4/10/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public protocol ContentRepository: Sendable {
    func getContent() async throws -> Content
    
    func setContent(input: String) async throws
}
