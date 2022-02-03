// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NetworkModule",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "NetworkModule",
            targets: ["NetworkModule"]
        )
//        .library(
//            name: "Alamofire",
//            targets: ["Alamofire"]
//        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .binaryTarget(
            name: "NetworkModule",
            path: "Sources/NetworkModuleDistribution/NetworkModule.xcframework"
        )
//        .binaryTarget(
//            name: "Alamofire",
//            path: "Sources/NetworkModuleDistribution/Alamofire.xcframework"
//        )
    ]
)
