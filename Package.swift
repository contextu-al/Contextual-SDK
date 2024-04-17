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
            checksum: "ddb4ca0b73aa5bbc1ca1217c95206e03669867e510bbc44760ce768ea591745c")
    ]
)
