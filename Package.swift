// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "BleSDK",
	platforms: [.iOS(.v14)],
	products: [
		.library(
			name: "BleSDK",
			targets: ["BleSDK"]
		),
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name: "BleSDK",
			path: "./Sources/BleSDK/BleSDK.xcframework"
		)
	]
)
