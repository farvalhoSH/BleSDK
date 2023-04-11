// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if targetEnvironment(simulator)

let package = Package(
	name: "MoveWearableSDK",
	platforms: [.iOS(.v14)],
	products: [
		.library(name: "MoveWearableSDK", targets: ["Simulator"]),
	],
	dependencies: [
	],
	targets: [
		.target(name: "Simulator")
	]
)

#else

let package = Package(
    name: "MoveWearableSDK",
	platforms: [.iOS(.v14)],
    products: [
        .library(name: "MoveWearableSDK", targets: ["MoveWearableSDK", "BleSDK"]),
    ],
    dependencies: [
    ],
    targets: [
		.target(name: "Internal", dependencies: [.target(name: "MoveWearableSDK")]),
		.target(name: "MoveWearableSDK", path: "MoveWearableSDK/Wrapper"),
		.binaryTarget(name: "BleSDK", path: "artifacts/BleSDK.xcframework"),
    ]
)

#endif
