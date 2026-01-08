//
//  Print.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/8/26.
//  MIT License
//

import Foundation

/// Prints the given items to the standard output only in DEBUG builds.
///
/// This helper mirrors Swift's `print` function but compiles to a no-op in
/// non-DEBUG configurations, allowing you to sprinkle debug logging throughout
/// your code without incurring runtime cost or leaking logs in release builds.
///
/// - Parameters:
///   - items: Zero or more items to print. Each item is converted to a string
///     using `String(describing:)` and separated by `separator`.
///   - separator: A string to insert between each item. The default is a single space (`" "`).
///   - terminator: The string to print after all items have been printed. The default is a newline (`"\n"`).
///
/// - Note: In non-DEBUG builds, this function does nothing and produces no output.
///
/// - Authors: [@pianometal](https://github.com/pianometal)
nonisolated public func printOnDebug(_ items: Any..., separator: String = " ", terminator: String = "\n") {
#if DEBUG
    print(items, separator: separator, terminator: terminator)
#endif
}
