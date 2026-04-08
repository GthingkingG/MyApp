//
//  InputRepositoryImpl.swift
//  UIText
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

final class InputRepositoryImpl: InputRepository {
    
    func setInput(content: String) async throws -> Input {
        let input = Input(content: content)
        return input
    }
}
