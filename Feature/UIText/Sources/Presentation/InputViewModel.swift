//
//  InputViewModel.swift
//  UIText
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

@Observable
@MainActor
public final class InputViewModel: ObservableObject {
    let nickName: String = "One"
    var inputData: String = ""
    
    private let setInputUseCase: SetInputUseCase
    
    public init(setInputUseCase: SetInputUseCase) {
        self.setInputUseCase = setInputUseCase
    }
    
    func setInput() async {
        do {
            let input = try await setInputUseCase.execute(content: self.inputData)
            print(input) //디버깅용
        } catch { print(error) }
    }
}


