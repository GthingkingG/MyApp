//
//  InputView.swift
//  UIText
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import SwiftUI

public struct InputView: View {
    @State private var viewModel: InputViewModel
    
    public init(viewModel: InputViewModel) {
        _viewModel = State(initialValue: viewModel)
    }
    
    public var body: some View {
        VStack {
            TextField(viewModel.nickName, text: $viewModel.inputData)
            
            Button(action: {
                Task {
                    await viewModel.setInput()
                }
            }, label: {
                Text("저장")
            })
        }
    }
}
