// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let name = "UltraSwift"

let package = Package(
    name: name,
    defaultLocalization: "en",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
        .visionOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26)
    ],
    products: [
        .library(name: name, targets: [name]),
    ],
    targets: [
        .target(
            name: name,
            swiftSettings: SwiftSettings.actor(.nonIsolated)
        ),
        .testTarget(
            name: "UltraSwiftTests",
            dependencies: ["UltraSwift"],
            swiftSettings: SwiftSettings.actor(.nonIsolated)
        ),
    ],
    swiftLanguageModes: [
        .v6
    ],
)

/// An enumeration that centralizes default actor isolation configuration for package targets.
///
/// Use `SwiftSettings.actor(_:)` to produce a consistent set of `SwiftSetting` entries
/// that configure default isolation and enable a curated set of upcoming concurrency features
/// across the package. This helps enforce a predictable concurrency model during compilation.
///
/// - Authors: [@pianometal](https://github.com/pianometal)
@frozen nonisolated public enum SwiftSettings: String, CaseIterable, Hashable, CodingKey, Sendable, Equatable {
    
    /// The target's default isolation is the `MainActor`.
    case main
    
    /// The target has no default actor isolation.
    case nonIsolated
    
    /// - Returns: The corresponding `MainActor.Type` for the case, or `nil` for non-isolated.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    var type: MainActor.Type? {
        switch self {
        case .main:        MainActor.self
        case .nonIsolated: nil
        }
    }
    
    /// Produces a curated set of Swift compiler settings that establish a default actor isolation
    /// for the target and enable a small group of upcoming concurrency features.
    ///
    /// This helper centralizes how the package configures concurrency across targets, ensuring
    /// consistency and reducing duplication in `Package.swift`.
    ///
    /// ## Example
    /// ```swift
    /// // In a target definition within Package.swift
    /// swiftSettings: SwiftSettings.actor(.main)
    /// ```
    /// ## Usage
    /// - For UI-focused targets on Apple platforms, prefer `.main` to align with main-actor–affine APIs.
    /// - For foundational or compute-heavy targets, consider `.nonIsolated` and apply explicit isolation
    ///   (e.g., `actor`, `@MainActor`, `nonisolated`) on a case-by-case basis.
    ///
    /// - Parameter type: The desired default actor configuration for the target.
    ///
    /// - Returns:
    ///   - An array of `SwiftSetting` values that:
    ///     - Set the target’s default isolation to the specified actor (`.defaultIsolation(...)`).
    ///     - Enable stricter concurrency checking (`StrictConcurrency`) to catch data races and isolation issues.
    ///     - Treat nonisolated declarations as non-Sendable by default (`NonisolatedNonsendingByDefault`),
    ///       encouraging explicit `Sendable` conformance where appropriate.
    ///     - Allow the compiler to infer isolation for protocol conformances (`InferIsolatedConformances`)
    ///       to reduce boilerplate while preserving correctness.
    ///
    /// - Note:
    ///   - These settings influence compile-time checks and defaults only; they do not change runtime behavior.
    ///   - You can still override isolation for individual declarations using standard Swift concurrency annotations.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    public static func actor(_ type: Self) -> [SwiftSetting] {
        [
            .defaultIsolation(type.type),
            .enableUpcomingFeature("StrictConcurrency"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
        ]
    }
}
