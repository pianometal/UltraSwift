//
//  FontDesign.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/7/26.
//  MIT License
//

import SwiftUI

nonisolated public extension Font.Design {
    
    /// - Returns: String representation of the font design.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    var name: String {
        switch self {
        case .default: "Default"
        case .serif: "Serif"
        case .rounded: "Rounded"
        case .monospaced: "Monospaced"
        @unknown default: "Unknown"
        }
    }
    
    /// - Returns: An array of all standard `Font.Design` cases.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    static let allCases: [Font.Design] = [
        .default,
        .serif,
        .rounded,
        .monospaced
    ]
    
    /// Compares two `Font.Design` values based on their names.
    ///
    /// - Sorted by `name`
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.name < rhs.name
    }
}

// MARK: - Preview

#if DEBUG
#Preview {
    @Previewable @State var design = Font.Design.default
    VStack {
        VStack {
            Text(design.name)
                .font(.largeTitle)
            Text("The quick brown fox jumps over the lazy dog.")
                .font(.caption)
        }
        .contentTransition(.numericText())
        .fontDesign(design)
        .padding()
        ForEach(Font.Design.allCases, id: \.self) { style in
            Button {
                withAnimation(.smooth) {
                    design = style
                }
            } label: {
                Text(style.name)
                    .font(.title2)
                    .fontDesign(style)
                    .foregroundStyle(design == style ? .primary : .secondary)
                    .padding()
            }
            .glassButton(or: .borderedProminent)
        }
    }
    .tint(.primary)
}
#endif
