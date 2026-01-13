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
            swiftSettings: [
                .defaultIsolation(nil),
                .enableUpcomingFeature("StrictConcurrency"),
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("InferIsolatedConformances"),
            ]
        ),
        .testTarget(
            name: "UltraSwiftTests",
            dependencies: ["UltraSwift"],
            swiftSettings: [
                .defaultIsolation(nil),
                .enableUpcomingFeature("StrictConcurrency"),
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("InferIsolatedConformances"),
            ]
        ),
    ],
    swiftLanguageModes: [
        .v6
    ],
)
