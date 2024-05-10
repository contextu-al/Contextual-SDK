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
            url:"https://github.com/contextu-al/Contextual-SDK/releases/download/3.0.3/ContextualSDK.xcframework.zip",
            checksum: "8fd376ebb9514b1cd917963bab0da430b769692f91236a2c5fb19decc81ef71d")
    ]
)
