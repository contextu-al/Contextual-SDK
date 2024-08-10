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
            url:"https://github.com/contextu-al/Contextual-SDK/releases/download/3.0.4/ContextualSDK.xcframework.zip",
            checksum: "b8fe7f224e8a06fc642bbc53cd6486b7f75191ad3f5219772befd3f2661b6feb")
    ]
)
