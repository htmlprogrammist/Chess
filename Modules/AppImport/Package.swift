// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "AppImport",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "AppImport",
            targets: ["AppImport"]),
    ],
    dependencies: [
        .package(path: "Models")
    ],
    targets: [
        .target(
            name: "AppImport",
            dependencies: [
                .product(name: "Models", package: "Models")
            ]),
        .testTarget(
            name: "AppImportTests",
            dependencies: ["AppImport"]),
    ],
    swiftLanguageVersions: [.v5]
)
