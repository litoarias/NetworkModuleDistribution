// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
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
            checksum: "62cd501033eb184784691db52de1db10f80e43a02c711f0094c46f859ad2c008"
        )
    ]
)
