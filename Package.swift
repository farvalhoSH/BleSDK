// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoveWearableSDK",
	platforms: [.iOS(.v14)],
    products: [
        .library(name: "MoveWearableSDK", targets: ["MoveWearableSDK", "BleSDK"]),
    ],
    dependencies: [
    ],
    targets: [
		.target(name: "MoveWearableSDK", dependencies: [.target(name: "Wrapper")]),
		.target(name: "Wrapper", path: "Wrapper/Wrapper"),
		.binaryTarget(name: "BleSDK", path: "artifacts/BleSDK.xcframework"),
        .testTarget(
            name: "MoveWearableSDKTests",
            dependencies: ["MoveWearableSDK"]
		),
    ]
)
