// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SessionRecorder",
    platforms: [
        .iOS(.v12) // Define the minimum version of iOS your package supports
    ],
    products: [
        .library(
            name: "SessionRecorder",
            targets: ["SessionRecorder"]),
    ],
    targets: [
        .target(
            name: "SessionRecorder",
            dependencies: []),
        .testTarget(
            name: "SessionRecorderTests",
            dependencies: ["SessionRecorder"]),
    ]
)
