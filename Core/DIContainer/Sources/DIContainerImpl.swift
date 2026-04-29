//
//  DIScope.swift
//  DIContainer
//
//  Created by One on 4/8/26.
//  Copyright © 2026 com.myapp. All rights reserved.
//

import Foundation

public enum DIScope {
    case singleton
    case transient
}

public protocol Resolver {
    func resolve<T>(_ type: T.Type) -> T
}

@Observable
public final class DIContainer: Resolver {
    public init() { }
    
    public typealias Factory = (Resolver) -> Any
    
    public struct Entry {
        public let scope: DIScope
        public let factory: Factory
        public var instance: Any?
    }
    
    private var entries: [ObjectIdentifier: Entry] = [:]
    private let lock = NSRecursiveLock()
    
    public func register<T>(
        _ type: T.Type,
        scope: DIScope = .transient,
        factory: @escaping (Resolver) -> T
    ) {
        let key = ObjectIdentifier(type)
        
        lock.lock()
        defer { lock.unlock() }
        
        entries[key] = Entry(scope: scope, factory: factory, instance: nil)
    }
    
    public func resolve<T>(_ type: T.Type = T.self) -> T {
        let key = ObjectIdentifier(type)
        
        lock.lock()
        defer { lock.unlock() }
        
        guard var entry = entries[key] else {
            
            #if DEBUG
            fatalError("No registration found for \(type)")
            #endif
        }
        
        switch entry.scope {
        case .singleton:
            if let cached = entry.instance as? T {
                return cached
            }
            
            guard let created = entry.factory(self) as? T else {
                fatalError("Failed to cast singleton instance for \(type)")
            }
            entry.instance = created
            entries[key] = entry
            return created
            
        case .transient:
            guard let created = entry.factory(self) as? T else {
                fatalError("Failed to cast transient instance for \(type)")
            }
            return created
        }
    }
}

