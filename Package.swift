// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "ChanAlgo",
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "ChanAlgo",
			targets: ["ChanAlgo"]),
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-format.git", .upToNextMajor(from: "509.0.0")),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "ChanAlgo"),
		.testTarget(
			name: "ChanAlgoTests",
			dependencies: ["ChanAlgo"]),
	]
)
