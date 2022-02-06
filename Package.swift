// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.1"
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
            url: "https://github.com/litoarias/NetworkModuleDistribution/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: "8f42f67a0665798e1c4e149c73a36fb9dddc062bc90e3b4e077ea571613ddda1"
        )
    ]
)
