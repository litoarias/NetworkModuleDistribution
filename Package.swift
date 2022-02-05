// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.4"
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
            checksum: "0502bdcc9df0ffa6cc339fef0d68c21b8b68b4d63f06f6ad5cb58ee1a59cfbd3"
        )
    ]
)
