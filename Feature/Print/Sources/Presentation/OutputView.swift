//
//  OutputView.swift
//  Print
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import SwiftUI
import ContentData

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
