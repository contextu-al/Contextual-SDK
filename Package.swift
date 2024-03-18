// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Contextual",
    products: [
        .library(
            name: "ContextualSDK",
            targets: ["ContextualSDK"]),
    ],
    dependencies: [
        .package(
          name:"paper-onboarding", 
          url: "https://github.com/StreetHawkInc/paper-onboarding.git", 
          .upToNextMajor(from: "2.0.5"))
    ],
    targets: [
        .binaryTarget(
            name: "ContextualSDK",
            url:"https://repo.contextu.al/artifactory/contextual/ios/dev/ContextualSDK.xcframework.zip",
            checksum: "27991c49625cd01b4eaa56d00e278a7901a776c7f636461eec332643c063436b")
    ]
)
