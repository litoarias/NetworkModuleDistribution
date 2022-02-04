// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkModule",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NetworkModule",
            targets: ["NetworkModule"]
        ),
        .library(
            name: "Alamofire",
            targets: ["Alamofire"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.5.0"))
    ],
    //    dependencies: [
    //        .package(name: "Alamofire", path: "Sources/NetworkModuleDistribution/Alamofire.xcframework")
    //    ],
    targets: [
        .binaryTarget(
            name: "NetworkModule",
            path: "Sources/NetworkModuleDistribution/NetworkModule.xcframework"
        ),
        .binaryTarget(
            name: "Alamofire",
            path: "Sources/NetworkModuleDistribution/Alamofire.xcframework"
        )
    ]
)
