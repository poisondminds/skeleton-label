// swift-tools-version:5.1
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
            dependencies: []),
        .testTarget(
            name: "skeleton-labelTests",
            dependencies: ["SkeletonLabel"]),
    ]
)
