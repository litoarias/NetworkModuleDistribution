// swift-tools-version:5.5
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
        ),
        .library(
            name: "Alamofire",
            targets: ["Alamofire"]
        )
    ],
//    dependencies: [
//        .package(name: "Alamofire", path: "Alamofire.xcframework")
//    ],
    targets: [
        .binaryTarget(
            name: "NetworkModule",
            path: "NetworkModule.xcframework"
        ),
        .binaryTarget(
            name: "Alamofire",
            path: "Alamofire.xcframework"
        )
    ])
