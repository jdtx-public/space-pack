// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "novas-lib",
    platforms: [
        SupportedPlatform.iOS(.v18),
        SupportedPlatform.macOS(.v15),
        SupportedPlatform.macCatalyst(.v18),
        SupportedPlatform.visionOS(.v1),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "novas-lib",
            targets: ["novas-c"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "novas-c",
            dependencies: [],
            path: "Sources/novas-c",
            publicHeadersPath: "include")
    ],
    cLanguageStandard: CLanguageStandard.c89
)
