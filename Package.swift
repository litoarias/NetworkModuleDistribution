// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.1.0"
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
            checksum: "87db3dbb090759f90621144d813989a7fe9e71491b1ee43aa41b0cee4488bdda"
        )
    ]
)
