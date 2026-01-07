//
//  Edge.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/7/26.
//  MIT License
//

import SwiftUI

nonisolated public extension Edge {
    
    /// Defines two primary orientations for `Edge` values.
    ///
    /// ## Horizontal
    /// Represents edges that are either `.leading` or `.trailing`.
    ///
    /// ## Vertical
    /// Represents edges that are either `.top` or `.bottom`.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    enum Orientation: String, Staticable {
        
        /// `Edge.leading` or `Edge.trailing`
        case horizontal
        
        /// `Edge.top` or `Edge.bottom`
        case vertical
    }
    
    /// - Returns: The edge opposite to the current edge.
    var opposite: Self {
        switch self {
        case .top: .bottom
        case .leading: .trailing
        case .bottom: .top
        case .trailing: .leading
        }
    }
    
    /// Converts the current `Edge` to a specific `Edge` based on the given orientation.
    ///
    /// This method interprets the receiver as either a horizontal or vertical edge
    /// depending on the provided `orientation`, and returns the corresponding
    /// canonical `Edge` value.
    ///
    /// - Parameter orientation: The axis (`.horizontal` or `.vertical`) that determines how to interpret the current edge.
    ///
    /// - Returns: The corresponding `Edge` on the specified orientation, or `nil` if the precondition is not met.
    ///
    /// - Precondition:
    ///   - When `orientation` is `.horizontal`, `self` is `.leading` or `.trailing`;
    ///   - When `orientation` is `.vertical`, `self` is `.top` or `.bottom`.
    func toEdge(_ orientation: Edge.Orientation) -> Self? {
        switch orientation {
        case .horizontal: horizontal()?.toEdge()
        case .vertical: vertical()?.toEdge()
        }
    }
    
    /// Converts an `Edge` to its corresponding `VerticalEdge` if applicable.
    /// - Returns: A `VerticalEdge` instance corresponding to the `Edge`. or `nil` if not vertical.
    private func vertical() -> VerticalEdge? {
        switch self {
        case .top: .top
        case .bottom: .bottom
        default: nil
        }
    }
    
    /// Converts an `Edge` to its corresponding `HorizontalEdge` if applicable.
    /// - Returns: A `HorizontalEdge` instance corresponding to the `Edge`. or `nil` if not horizontal.
    private func horizontal() -> HorizontalEdge? {
        switch self {
        case .leading: .leading
        case .trailing: .trailing
        default: nil
        }
    }
}

nonisolated public extension VerticalEdge {
    
    /// Converts a `VerticalEdge` to its corresponding `Edge`.
    /// - Returns: An `Edge` instance corresponding to the `VerticalEdge`.
    func toEdge() -> Edge {
        switch self {
        case .top: .top
        case .bottom: .bottom
        }
    }
}

nonisolated public extension HorizontalEdge {
    
    /// Converts a `HorizontalEdge` to its corresponding `Edge`.
    /// - Returns: An `Edge` instance corresponding to the `HorizontalEdge`.
    func toEdge() -> Edge {
        switch self {
        case .leading: .leading
        case .trailing: .trailing
        }
    }
}
