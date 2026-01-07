//
//  AppleOS.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/7/26.
//  MIT License
//

import SwiftUI

/// Enumeration of Apple operating systems.
///
/// Each case corresponds to one of Apple's OS families and
/// provides convenient, platform-specific metadata such as a human-readable device name,
/// an SF Symbols glyph identifier, and a canonical display name.
///
/// - Authors: [@pianometal](https://github.com/pianometal)
nonisolated public enum AppleOS: String, Staticable, Searchable, Iconable {
    
    case iOS
    case iPadOS
    case macOS
    case visionOS
    case tvOS
    case watchOS
    
    /// - Returns: A human-readable device name associated with the platform.
    public var device: String {
        switch self {
        case .iOS:      "iPhone"
        case .iPadOS:   "iPad"
        case .macOS:    "Mac"
        case .tvOS:     "Apple TV"
        case .watchOS:  "Apple Watch"
        case .visionOS: "Vision Pro"
        }
    }
    
    /// - Returns: An SF Symbols glyph identifier representing the platform.
    public var icon: String {
        switch self {
        case .iOS:      "iphone"
        case .iPadOS:   "ipad"
        case .macOS:    "desktopcomputer"
        case .tvOS:     "appletv"
        case .watchOS:  "applewatch"
        case .visionOS: "vision.pro"
        }
    }
    
    /// - Returns: The canonical display name of the platform.
    public var name: String {
        switch self {
        case .iOS:      "iOS"
        case .iPadOS:   "iPadOS"
        case .macOS:    "macOS"
        case .tvOS:     "tvOS"
        case .watchOS:  "watchOS"
        case .visionOS: "visionOS"
        }
    }
}

#if DEBUG
#Preview {
    List {
        ForEach(AppleOS.allCases) { os in
            Label {
                Text(os.name)
                Text(os.device)
            } icon: {
                Image(systemName: os.icon)
                    .font(.title)
            }
        }
    }
}
#endif
