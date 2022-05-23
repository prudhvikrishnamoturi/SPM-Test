// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dependencies",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Dependencies",
            targets: ["Dependencies"])
    ],
    platforms: [.macOS(.v10_12),
                .iOS(.v10),
                .tvOS(.v10),
                .watchOS(.v3)],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/prudhvikrishnamoturi/RestManager", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Dependencies",
            path: "Source",
            exclude: ["Info.plist"],
            dependencies: ["RestManager"]),
        .testTarget(
            name: "DependenciesTests",
            path: "Tests",
            exclude: ["Info.plist", "Test Plans"],
            resources: [.process("Resources")],
            dependencies: ["Dependencies"])
    ]
    
    swiftLanguageVersions: [.v5]
)
