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
            checksum: "33d8f024fc74ff8670fb4d0b61c347d48a8afb589df6ac72ed0984da7d49ff51")
    ]
)
