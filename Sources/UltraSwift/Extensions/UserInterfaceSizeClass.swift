//
//  UserInterfaceSizeClass.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/8/26.
//  MIT License
//

import SwiftUI

nonisolated public extension UserInterfaceSizeClass {
    
    /// - Returns: A string representing the size class.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    var name: String {
        switch self {
        case .compact: "Compact"
        case .regular: "Regular"
        @unknown default: "Unknown"
        }
    }
}

nonisolated public extension UserInterfaceSizeClass? {
    
    /// - SeeAlso: `UserInterfaceSizeClass.name`
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    var name: String {
        guard let self else { return "Unknown" }
        return self.name
    }
}
