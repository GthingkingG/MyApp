//
//  OutputView.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import SwiftUI

public struct OutputView: View {
    @State private var viewModel: OutputViewModel
    
    public init(viewModel: OutputViewModel) {
        _viewModel = State(initialValue: viewModel)
    }
    
    public var body: some View {
        VStack {
            Button(action: {
                Task {
                    await viewModel.printOutput()
                }
            }, label: {
                Text("출력 버튼")
                    .foregroundStyle(.white)
                    .background{
                        Rectangle()
                            .fill(.green)
                    }
            })
        }
    }
}

#if DEBUG
private struct MockOutputRepository: OutputRepository {
    func printOutput(input: String) async throws -> Output {
        Output(content: "mock: \(input)")
    }
}

#Preview {
    OutputView(
        viewModel: OutputViewModel(
            printOutputUseCase: PrintOutputUseCase(repository: MockOutputRepository())
        )
    )
}
#endif

