// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AlertsAndPickers",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "AlertsAndPickers", targets: ["AlertsAndPickers"]),
        .library(name: "PermissionAlertsAndPickers", targets: ["PermissionAlertsAndPickers"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AlertsAndPickers",
//            path: ".",
            exclude: [
                "Example",
                "README.md",
                "LICENSE",
                "Source/Pickers/Locale/Countries.bundle"
            ],
            resources: [
                .process("Assets"),
                .process("Source/Pickers/Locale/Countries.bundle")
            ]
        ),
        .target(
            name: "PermissionAlertsAndPickers",
            dependencies: ["AlertsAndPickers"]
        )
    ]
)

