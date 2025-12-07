// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "is_ios_app_on_mac",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "is-ios-app-on-mac", targets: ["is_ios_app_on_mac"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "is_ios_app_on_mac",
            dependencies: [],
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        )
    ]
)
