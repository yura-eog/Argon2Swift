// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Argon2Swift",
    platforms: [
        .macOS(.v10_10), .tvOS(.v9), .iOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "Argon2Swift", targets: ["Argon2Swift"]),
    ],
    dependencies: [
        .package(name: "argon2", url: "https://github.com/yura-eog/phc-winner-argon2", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "Argon2Swift", dependencies: ["argon2"], path: "Sources/Swift"),
        .testTarget(name: "Argon2SwiftTests", dependencies: ["Argon2Swift"], path: "Tests"),
    ]
)
