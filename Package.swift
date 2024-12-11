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
    dependencies: [
        .package(url: "https://github.com/William-Weng/WWBarberPoleView", from: "1.2.2")
    ],
    targets: [
        .target(name: "WWSkeletonView", dependencies: ["WWBarberPoleView"], resources: [.copy("Privacy")]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
