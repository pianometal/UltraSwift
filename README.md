# 🚀 UltraSwift

- An ultra modern collection of tools I use on a regular basis 🎹🤘

> "Very cool, I use it in all of my apps."
> 
>   *- Abraham Lincoln, 16th President of the USA*

> "This is terrible."
>
>   *- Bob, Liar and Thief*

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?logo=mitlicense)](https://opensource.org/licenses/MIT)

## Compatibility

### Xcode

![Xcode](https://img.shields.io/badge/Xcode-26.0-blue?logo=xcode)

### Swift

![Language Version](https://img.shields.io/badge/Language_Version-6.2-orange?logo=swift)

![Approachable Concurrency](https://img.shields.io/badge/Approachable_Concurrency-Yes-darkgreen?logo=swift)
![Strict_Concurrency_Checking](https://img.shields.io/badge/Strict_Concurrency_Checking-Complete-darkblue?logo=swift)
![Default Actor Isolation](https://img.shields.io/badge/Default_Actor_Isolation-nil-darkred?logo=swift)

### Platforms

![iOS 26.0](https://img.shields.io/badge/iOS-26.0-blue.svg?logo=apple)
![iPadOS 26.0](https://img.shields.io/badge/iPadOS-26.0-blue.svg?logo=apple)
![macOS 26.0](https://img.shields.io/badge/macOS-26.0-blue.svg?logo=apple)
![tvOS 26.0](https://img.shields.io/badge/tvOS-26.0-blue.svg?logo=apple)
![visionOS 26.0](https://img.shields.io/badge/visionOS-26.0-blue.svg?logo=apple)
![watchOS 26.0](https://img.shields.io/badge/watchOS-26.0-blue.svg?logo=apple)

## Installation

![Swift Package Manager](https://img.shields.io/badge/SPM-Compatible-darkgreen.svg?logo=swift)

#### Xcode

```
https://github.com/pianometal/UltraSwift.git
```

#### Package

```swift
dependencies: [
    .package(
        url: "https://github.com/pianometal/UltraSwift.git",
        .upToNextMinor(from: .init(3, 0, 0))
    ),
],
```
```swift
targets: [
    .target(name: "MyTarget", dependencies: [.byName(name: "UltraSwift")]),
]
```
