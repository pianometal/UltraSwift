//
//  String.swift
//  UltraSwift
//
//  Created by Kyle Lovely on 1/10/26.
//  MIT License
//

import SwiftUI

public extension String {
    
    /// Converts the string into a URL using UltraSwift's `URL.create(_:)`.
    ///
    /// This relies on `URL.create(_:)` from UltraSwift, which applies debug
    /// information in the terminal if the URL creation fails.
    ///
    /// - Returns: A `URL` created from the string, or `nil` if the string is not a valid URL.
    ///
    /// - Authors: [@pianometal](https://github.com/pianometal)
    var toURL: URL? {
        URL.create(self)
    }
}

#if DEBUG
#Preview {
    NavigationStack {
        List {
            LabeledContent {
                if let valid = "https://www.apple.com".toURL {
                    true.labelView()
                } else {
                    false.labelView()
                }
            } label: {
                Text("Valid URL")
                Text("Testing with Apple's official website")
            }
            
            LabeledContent {
                if let blank = "".toURL {
                    false.labelView()
                } else {
                    true.labelView()
                }
            } label: {
                Text("Blank URL")
                Text("Testing with an empty string")
            }
            
            LabeledContent {
                if let whitespace = "   ".toURL {
                    false.labelView()
                } else {
                    true.labelView()
                }
            } label: {
                Text("Whitespace URL")
                Text("Testing with a string of spaces")
            }
            LabeledContent {
                if let invalid = "ht!tp://invalid-url".toURL {
                    false.labelView()
                } else {
                    true.labelView()
                }
            } label: {
                Text("Invalid URL")
                Text("Testing with a malformed URL")
            }
        }
        .navigationTitle("URL Test Results")
    }
}
#endif
