//
//  URL.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/10/26.
//  MIT License
//

import SwiftUI

nonisolated public extension URL {
    
    /// Attempts to construct a valid, contactable URL from the provided string.
    ///
    /// This helper validates two things:
    /// 1. The string can be parsed into a `URL`.
    /// 2. The resulting URL has a non-empty `host` component (to ensure it points to a contactable endpoint).
    ///
    /// If either validation fails, a debug message is logged and `nil` is returned.
    ///
    /// - Parameter string: The raw string to convert into a `URL`.
    ///
    /// - Returns: A `URL` if the string forms a valid URL with a non-empty host; otherwise, `nil`.
    ///
    /// - Note: This function is intended for network/remote URLs. It will reject URLs without a host
    ///         (e.g., file URLs or custom schemes without hosts).
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    static func create(_ string: String) -> URL? {
        guard let url = URL(string: string) else {
            printOnDebug("⚠️ Unable to create URL from: \(string)")
            return nil
        }
        guard let host = url.host, !host.isEmpty else {
            printOnDebug("⚠️ Unable to contact host from: \(url.debugDescription)")
            return nil
        }
        return url
    }
}
