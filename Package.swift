// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "BleSDK",
	platforms: [.iOS(.v14)],
	products: [
		.library(
			name: "BleSDK",
			targets: ["Framework"]
		),
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name:"Framework",
			url: "https://github.com/farvalhoSH/BleSDK/blob/master/Framework/BleSDK.xcframework.zip",
			checksum: "e97185e985928bad7a72877a38a3281841be4f8c6decc682dc80bc4c29502e6ab334fcbfdb760d5bbab5338f4be247a315a499eb75c38c2422afcda7039bfbd5"
		)
	]
)
