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
            targets: ["NetworkModule"])
    ],
    dependencies: [
        // Here we define our package's external dependencies
        // and from where they can be fetched:
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.5.0"))
    ],
    targets: [
        .binaryTarget(
            name: "NetworkModule",
            path: "NetworkModule.xcframework")
    ])
