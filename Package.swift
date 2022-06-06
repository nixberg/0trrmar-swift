// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "0trrmar",
    platforms: [
       .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
        .package(url: "https://github.com/vapor/vapor", from: "4.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "0trrmar",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
        .executableTarget(
            name: "1cep9ug",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
            ])
            // swiftSettings: [
            //     .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            // ]),
    ]
)
