//
//  FontDesign.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/7/26.
//  MIT License
//

import SwiftUI

nonisolated public extension Font.Design {
    
    var name: String {
        switch self {
        case .default:    "Default"
        case .serif:      "Serif"
        case .rounded:    "Rounded"
        case .monospaced: "Monospaced"
        @unknown default: "Unknown"
        }
    }
    
    static let allCases: [Font.Design] = [
        .default,
        .serif,
        .rounded,
        .monospaced
    ]
}
