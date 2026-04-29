//
//  ContentRepositoryImpl.swift
//  ContentData
//
//  Created by One on 4/10/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public actor ContentRepositoryImpl: ContentRepository, Sendable {
    public init() {
        #if DEBUG
        print("ContentRepositoryIMPL")
        #endif
    }
    
    private var content: Content = Content(contents: "1")
    
    
    public func getContent() async throws -> Content {
        content
    }
    
    public func setContent(input: String) async throws {
        let content = Content(contents: input)
        self.content = content
        print(self.content.contents)
    }
}
