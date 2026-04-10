//
//  InputViewModel.swift
//  UIText
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation
import ContentData

@Observable
@MainActor
public final class InputViewModel: ObservableObject {
    let nickName: String = "One"
    var inputData: String = ""
    
    private let setContentUseCase: SetContentUseCase
    
    public init(setContentUseCase: SetContentUseCase) {
        self.setContentUseCase = setContentUseCase
    }
    
    func setInput() async {
        do {
            try await setContentUseCase.execute(input: self.inputData)
        } catch { print(error) }
    }
}
