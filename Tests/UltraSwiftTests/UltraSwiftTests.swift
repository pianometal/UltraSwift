import Testing
import SwiftUI
@testable import UltraSwift

/// Tests for UltraSwift Edge opposite extension.
///
/// - Authors: [@pianometal](https://github.com/pianometal)
@Test func testEdgeOpposite() async throws {
    #expect(Edge.top.opposite == .bottom)
    #expect(Edge.bottom.opposite == .top)
    #expect(Edge.leading.opposite == .trailing)
    #expect(Edge.trailing.opposite == .leading)
}

/// Tests for UltraSwift Edge horizontal orientation conversions.
///
/// - Authors: [@pianometal](https://github.com/pianometal)
@Test func testEdgeToEdgeHorizontal() async throws {
    #expect(Edge.leading.toEdge(.horizontal) == .leading)
    #expect(Edge.trailing.toEdge(.horizontal) == .trailing)
    #expect(Edge.top.toEdge(.horizontal) == nil)
    #expect(Edge.bottom.toEdge(.horizontal) == nil)
}

/// Tests for UltraSwift Edge vertical orientation conversions.
///
/// - Authors: [@pianometal](https://github.com/pianometal)
@Test func testEdgeToEdgeVertical() async throws {
    #expect(Edge.top.toEdge(.vertical) == .top)
    #expect(Edge.bottom.toEdge(.vertical) == .bottom)
    #expect(Edge.leading.toEdge(.vertical) == nil)
    #expect(Edge.trailing.toEdge(.vertical) == nil)
}
