//
//  ContentViewModel.swift
//  MyApp
//
//  Created by One on 4/8/26.
//

import Foundation

@MainActor
final class ContentViewModel: ObservableObject {
    @Published var content: String = ""
}
