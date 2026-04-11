//
//  ParsingViewModel.swift
//  Parsing
//
//  Created by One on 4/12/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation
import ContentData

@Observable
@MainActor
public final class ParsingViewModel {
    private let getContentUseCase: GetContentUseCase
    internal var content: String = ""
    internal var isSheet: Bool = false
    
    public init(getContentUseCase: GetContentUseCase) {
        self.getContentUseCase = getContentUseCase
    }
    
}
