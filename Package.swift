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
            url:"https://repo.contextu.al/artifactory/contextual/ios/spm/3.0.0/ContextualSDK.xcframework.zip",
            checksum: "3fb8b8ba7e953902db8d0f5f3cbc3f9cde1b2e302bb6cd0b560ad0286b4c2dbb")
    ]
)
