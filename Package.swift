// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.2"
let moduleName = "NetworkModule"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/litoarias/NetworkModule/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: "bdc0a10c4101b82e74a2e7f6f7e3fa424c8b16c6dd9492ffd6f149ff01e2e4fd"
        )
    ]
)
