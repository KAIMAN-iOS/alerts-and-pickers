// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AlertsAndPickers",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "AlertsAndPickers", targets: ["AlertsAndPickers"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AlertsAndPickers",
            path: ".",
            exclude: [
                "Bundle+Resources.swift",
                "Example"
            ],
            sources: ["Source/"],
            resources: [
                .process("Assets")
//                .process("Source/Pickers/Locale/Countries.bundle")
            ]
        )
    ]
)

