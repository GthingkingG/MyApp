//
//  ParsingView.swift
//  Parsing
//
//  Created by One on 4/12/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import SwiftUI
import ContentData

public struct ParsingView: View {
    @State private var viewModel: ParsingViewModel
    
    public init(viewModel: ParsingViewModel) {
        _viewModel = State(initialValue: viewModel)
    }
    
    public var body: some View {
        VStack {
            Button(action: {
                Task {
                    await viewModel.parcingContents()
                }
            }, label: {
                Text("분류 버튼")
                    .foregroundStyle(.white)
                    .background{
                        Rectangle()
                            .fill(.orange)
                    }
            })
        }
        .sheet(isPresented: $viewModel.isSheet) {
            ForEach(viewModel.contents.indices, id: \.self) { index in
                Text(viewModel.contents[index])
                    .font(Font.largeTitle)
            }
        }
    }
}
