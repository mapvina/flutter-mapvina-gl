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
        // Production: resolve the native distribution package from its public
        // GitHub release/tag. The distribution package's binaryTarget downloads
        // the MapVina.xcframework from the mapvina-native release asset, so no
        // local artifact or sibling checkout is required. Using a remote URL also
        // avoids Flutter's SPM plugin-symlink path-resolution issues entirely.
        .package(url: "https://github.com/mapvina/mapvina-gl-native-distribution", exact: "1.0.0"),
        // Local offline development (uncomment + add a .deps symlink to the
        // sibling distribution repo if building fully offline in the monorepo):
        // .package(path: ".deps/mapvina-gl-native-distribution"),
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
