// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.0"
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
            checksum: "1d29c3d6cb8d4d5173dc4ed6710ef6de661df85730cd7f420cfef2ffdabb41b1"
        )
    ]
)
