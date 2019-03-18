// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Atk",
    products: [
        .library(name: "Atk", targets: ["Atk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Brett-Best/CAtk.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftGObject.git", .branch("bb-pkg-dev"))
    ],
    targets: [
        .target(name: "Atk", dependencies: ["GLibObject"]),
        .testTarget(name: "AtkTests", dependencies: ["Atk"]),
    ]
)
