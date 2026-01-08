//
//  Edge.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/7/26.
//  MIT License
//

import SwiftUI

nonisolated public extension Edge {
    
    /// - Returns: The edge opposite to the current edge.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    var opposite: Self {
        switch self {
        case .top: .bottom
        case .leading: .trailing
        case .bottom: .top
        case .trailing: .leading
        }
    }
}
