//
//  OutputViewModel.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation
import ContentData

@Observable
@MainActor
public final class OutputViewModel {
    private let getContentUseCase: GetContentUseCase
    internal var content: String = ""
    internal var isSheet: Bool = false
    
    public init(getContentUseCase: GetContentUseCase) {
        self.getContentUseCase = getContentUseCase
    }
    
    
    internal func returnOutput() async {
        do {
            private let output = try await getContentUseCase.execute()
            print(output)
            content = output.contents
            isSheet = true
        } catch {
            print(error)
        }
    }
    
}
