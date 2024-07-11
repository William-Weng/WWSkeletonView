// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WWSkeletonView",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "WWSkeletonView", targets: ["WWSkeletonView"]),
    ],
    targets: [
        .target(name: "WWSkeletonView", resources: [.copy("Privacy")]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
