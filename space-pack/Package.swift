// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "space-pack",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "space-pack",
            targets: ["space-pack"]),
    ],
    dependencies: [
        .package(path: "../novas-lib/")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "space-pack",
            dependencies: [
                .product(name: "novas-lib", package: "novas-lib"),
            ]),
        .testTarget(
            name: "space-packTests",
            dependencies: ["space-pack"]
        ),
    ]
)