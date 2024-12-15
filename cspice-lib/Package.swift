// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cspice-lib",
    platforms: [
        SupportedPlatform.iOS(.v18),
        SupportedPlatform.macOS(.v15),
        SupportedPlatform.macCatalyst(.v18),
        SupportedPlatform.visionOS(.v1),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "cspice-lib",
            targets: ["cspice-lib"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "cspice-lib",
            path: "Sources/cspice-lib",
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "cspice-libTests",
            dependencies: ["cspice-lib"]
        ),
    ],
    cLanguageStandard: CLanguageStandard.c89
)
