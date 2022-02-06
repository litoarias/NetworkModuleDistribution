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
            checksum: "b866bee6d52ae8a341301c06ed28466e76d1c183b11471c5aaad3ab8e7465c01"
        )
    ]
)
