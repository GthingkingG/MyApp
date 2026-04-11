//
//  ContentViewModel.swift
//  MyApp
//
//  Created by One on 4/8/26.
//

import Foundation
import UIText
import Print
import Parsing

@MainActor
@Observable
public final class ContentViewModel {
    public init(inputViewModel: InputViewModel, outputViewModel: OutputViewModel, parsingViewModel: ParsingViewModel) {
        self.inputViewModel = inputViewModel
        self.outputViewModel = outputViewModel
        self.parsingViewModel = parsingViewModel
    }
    
    internal var content: String = ""
    internal var inputViewModel: InputViewModel
    internal var outputViewModel: OutputViewModel
    internal var parsingViewModel: ParsingViewModel
}
