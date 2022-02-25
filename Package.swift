// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "eDistantObject",
    platforms: [
      .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "eDistantObject",
            targets: ["eDistantObject"]),
        .library(
            name: "EDODeviceForwarder",
            targets: ["EDODeviceForwarder"]),
        .library(
            name: "EDOMeasure",
            targets: ["EDOMeasure"]),
        .library(
            name: "EDODevice",
            targets: ["EDODevice"]),
        .library(
            name: "EDOChannel",
            targets: ["EDOChannel"]),
        .library(
            name: "EDOService",
            targets: ["EDOService"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "eDistantObject",
            dependencies: []),
        .target(
            name: "EDOChannel",
            dependencies: [],
            path: "Channel/Sources",
            publicHeadersPath: "include"),
        .target(
            name: "EDODevice",
            dependencies: [],
            path: "Device/Sources",
            publicHeadersPath: "include"),
        .target(
            name: "EDODeviceForwarder",
            dependencies: [],
            path: "DeviceForwarder/Sources",
            publicHeadersPath: "include"),
        .target(
            name: "EDOMeasure",
            dependencies: [],
            path: "Measure/Sources",
            publicHeadersPath: "include"),
        .target(
            name: "EDOService",
            dependencies: [],
            path: "Service/Sources",
            publicHeadersPath: "include"),
        .testTarget(
            name: "eDistantObjectTests",
            dependencies: ["eDistantObject"]),
    ]
)
