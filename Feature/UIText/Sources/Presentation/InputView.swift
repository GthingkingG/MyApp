//
//  InputView.swift
//  UIText
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import SwiftUI

public struct InputView: View {
    @StateObject private var viewModel: InputViewModel
    
    public init(viewModel: InputViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        VStack {
            TextField(viewModel.nickName, text: $viewModel.inputData)
            
            Button(action: {
                Task {
                    await viewModel.setInput()
                }
            }, label: {
                Text("버튼")
            })
        }
    }
}

#if DEBUG
  private struct MockInputRepository: InputRepository {
      func setInput(content: String) async throws -> Input {
          Input(content: content)
      }
  }

  #Preview {
      InputView(
          viewModel: InputViewModel(
              setInputUseCase: SetInputUseCase(repository: MockInputRepository())
          )
      )
  }
  #endif
