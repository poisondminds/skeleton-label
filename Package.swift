// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SkeletonLabel",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "SkeletonLabel",
            targets: ["SkeletonLabel"]),
    ],
    targets: [
        .target(
            name: "SkeletonLabel",
            dependencies: [],
            path: "Sources"),
    ],
    swiftLanguageVersions: [.v5]
)
