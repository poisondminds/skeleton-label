// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "skeleton-label",
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
