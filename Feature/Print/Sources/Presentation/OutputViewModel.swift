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
    
    public init(getContentUseCase: GetContentUseCase) {
        self.getContentUseCase = getContentUseCase
    }
    
    
    func printOutput() async {
        do {
            let output = try await getContentUseCase.execute()
            print(output)
        } catch { print(error) }
    }
}
