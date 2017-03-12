//
//  Observable.swift
//  SwiftyLocations
//
//  Created by Basem Emara on 3/12/17.
//  Copyright © 2017 Zamzam Inc. All rights reserved.
//

import Foundation

public struct Observer<T> {
    let id: UUID
    let handler: T
    
    public init(_ id: UUID = UUID(), handler: T) {
        self.id = id
        self.handler = handler
    }
}

extension Observer: Equatable {
     public static func ==(lhs: Observer, rhs: Observer) -> Bool {
        return lhs.id == rhs.id
    }
}
