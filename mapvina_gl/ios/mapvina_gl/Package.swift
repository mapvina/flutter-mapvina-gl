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
        // Native MapVina is distributed exclusively via Swift Package Manager.
        // Local development: reference the distribution package through an
        // in-package symlink (.deps/mapvina-gl-native-distribution) that points
        // at the sibling distribution repo. A DOWNWARD relative path is required
        // so it resolves correctly through Flutter's SPM plugin symlink
        // (<app>/ios/Flutter/ephemeral/Packages/.packages/mapvina_gl). An upward
        // "../.." path would be resolved lexically against the symlink and escape
        // the plugin tree (see flutter SPM integration), so we keep it internal.
        .package(path: ".deps/mapvina-gl-native-distribution"),
        // Remote release (enable once the public release/tag is available):
        // .package(url: "https://github.com/mapvina/mapvina-gl-native-distribution", exact: "1.0.0"),
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
