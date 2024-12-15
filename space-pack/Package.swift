// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "space-pack",
    platforms: [
        SupportedPlatform.iOS(.v18),
        SupportedPlatform.macOS(.v15),
        SupportedPlatform.macCatalyst(.v18),
        SupportedPlatform.visionOS(.v1),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "space-pack",
            targets: ["space-pack"]),
        .library(
            name: "novas-swift",
            targets: ["novas-swift"])
    ],
    dependencies: [
        .package(path: "../novas-lib/"),
        .package(path: "../cspice-lib/")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "space-pack",
            dependencies: [
                .product(name: "novas-lib", package: "novas-lib"),
                .product(name: "cspice-lib", package: "cspice-lib")
            ]),
        .target(
            name: "novas-swift",
            dependencies: [
                .product(name: "novas-lib", package: "novas-lib")
            ]),
        .testTarget(
            name: "space-packTests",
            dependencies: ["space-pack"]
        ),
    ]
)
