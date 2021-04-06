// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NewModule", // This is the name of the package
    defaultLocalization: "en", // This allows for localization
    platforms: [.iOS(.v12)], // Our minimum deployment target is 12
    products: [
        .library(
            name: "NewModule",
            type: .static, // This is a static library
            targets: ["NewModule"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NewModule",
            dependencies: [
            ],
            path: "Sources", // This allows us to have a better folder structure
            resources: [
                .process("Media.xcassets") // We will store out assets here
            ]
        ),
        .testTarget(
            name: "NewModuleTests", // Unit tests
            dependencies: ["NewModule"]
        )
    ]
)
