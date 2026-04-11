//
//  ParsingViewModel.swift
//  Parsing
//
//  Created by One on 4/12/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation
import ContentData

@Observable
@MainActor
public final class ParsingViewModel {
    private let getContentUseCase: GetContentUseCase
    internal var content: String = ""
    internal var isSheet: Bool = false

    //0: Kor, 1: Eng, 2: Num, 3: Etc
    internal var contents: [String] = ["한글: ","영어: ","숫자: ","기타: "]
    
    public init(getContentUseCase: GetContentUseCase) {
        self.getContentUseCase = getContentUseCase
    }
    
    
    internal func classifyingContents(content: Character) -> Letter {
        if content.isNumber {
            let letter = Letter(value: "\(content)", type: .num)
            return letter
        } else if content.isASCII && content.isLetter {
            let letter = Letter(value: "\(content)", type: .eng)
            return letter
        } else if ("\u{AC00}" <= content && content <= "\u{D7A3}") || ("\u{3131}" <= content && content <= "\u{3163}") {
            let letter = Letter(value: "\(content)", type: .kor)
            return letter
        } else {
            let letter = Letter(value: "\(content)", type: .etc)
            return letter
        }
    }
    
    internal func appendContents(letter: Letter) {
        print("단어: \(letter.type), \(letter.value)")
        switch letter.type {
        case .kor:
            return contents[0] += letter.value
        case .eng:
            return contents[1] += letter.value
        case .num:
            return contents[2] += letter.value
        default:
            return contents[3] += letter.value
        }
    }
    
    internal func parcingContents() async {
        do {
            let output = try await getContentUseCase.execute()
            print(output)
            content = output.contents
            isSheet = true
            for char in content {
                print(char)
                let letter = classifyingContents(content: char)
                appendContents(letter: letter)
            }
        } catch {
            print(error)
        }
        
    }
}
