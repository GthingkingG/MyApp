//
//  OutputViewModel.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

@MainActor
public final class OutputViewModel: ObservableObject {
    @Published private var content: String = ""
    
    private let printOutputUseCase: PrintOutputUseCase
    
    public init(printOutputUseCase: PrintOutputUseCase) {
        self.printOutputUseCase = printOutputUseCase
    }
    
    func printOutput() async {
        do {
            let output = try await printOutputUseCase.execute(input: content)
            print(output)
        } catch { print(error) }
    }
}
