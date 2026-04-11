//
//  ContentType.swift
//  Parsing
//
//  Created by One on 4/12/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

internal struct Letter {
    let value: String
    let type: ContentType
}

internal enum ContentType: String {
    case kor
    case eng
    case num
    case etc
}

