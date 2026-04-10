//
//  ContentViewModel.swift
//  MyApp
//
//  Created by One on 4/8/26.
//

import Foundation
import UIText
import Print

@MainActor
@Observable
public final class ContentViewModel {
    public init(inputViewModel: InputViewModel, outputViewModel: OutputViewModel) {
        self.inputViewModel = inputViewModel
        self.outputViewModel = outputViewModel
    }
    
    var content: String = ""
    var inputViewModel: InputViewModel
    var outputViewModel: OutputViewModel
}
