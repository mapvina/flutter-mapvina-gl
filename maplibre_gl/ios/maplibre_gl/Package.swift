// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mapvina_gl",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "mapvina-gl", targets: ["mapvina_gl"])
    ],
    dependencies: [
        // When updating the dependency version,
        // make sure to also update the version in mapvina_gl.podspec.
        .package(url: "https://github.com/mapvina/mapvina-gl-native-distribution.git", exact: "6.25.1"),
    ],
    targets: [
        .target(
            name: "mapvina_gl",
            dependencies: [
                .product(name: "MapVina", package: "mapvina-gl-native-distribution")
            ],
            cSettings: [
                .headerSearchPath("include/mapvina_gl")
            ]
        )
    ]
)
