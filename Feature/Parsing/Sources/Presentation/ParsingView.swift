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
            sheetView
        }
        
        /* foreach 돌리는 법 */
        
        /*
        id: \.self -> 자기 값 서로 두명이 값이 같으면 한명만 등장
         uuid: id: \.studentId -> 서로 다른 존재로 돌리기

         [제옹, 원, 앤]
         
         enumerate: 배열을 대상으로, 열거형처럼 값을 직접 부르거나, 인덱스를 직접 부른다
         (값, 인덱스) -> (offset, index)
         조건 enumated 감싸는 대상이 배열이여함!
         
         그림 + 설명 카드를
         
         foreach 배치한다.
         액션 값을 누구한테 줄것인가를 정할때
         
         indeices
         배열 전체 들고 오겠다.
         
         */
    }
    
    @ViewBuilder
    private var sheetView: some View {
        ForEach(viewModel.contents.indices, id: \.self) { index in
            Text(viewModel.contents[index])
                .font(Font.largeTitle)
        }
    }
}
