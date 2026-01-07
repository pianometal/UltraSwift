# 🚀 UltraSwift

Things that make Swift even more ultra.

### License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

### Requirements

![Xcode](https://img.shields.io/badge/Xcode-26.0+-blue?logo=xcode)
![Swift](https://img.shields.io/badge/Swift-6.2-orange?logo=swift)

### Supported Platforms

![iOS 26.0+](https://img.shields.io/badge/iOS-26.0+-blue.svg)
![iPadOS 26.0+](https://img.shields.io/badge/iPadOS-26.0+-blue.svg)
![macOS 26.0+](https://img.shields.io/badge/macOS-26.0+-blue.svg)
![tvOS 26.0+](https://img.shields.io/badge/tvOS-26.0+-blue.svg)
![visionOS 26.0+](https://img.shields.io/badge/visionOS-26.0+-blue.svg)
![watchOS 26.0+](https://img.shields.io/badge/watchOS-26.0+-blue.svg)

### Installation

![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-green.svg)

#### Xcode

```
https://github.com/pianometal/UltraSwift.git
```

#### Package

```swift
dependencies: [
    .package(
        url: "https://github.com/pianometal/UltraSwift.git",
        .upToNextMinor(from: .init(1, 0, 0))
    ),
],
targets: [
    .target(name: "MyTarget", dependencies: [.byName(name: "UltraSwift")]),
]
```
