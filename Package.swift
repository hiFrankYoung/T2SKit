// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "T2SKit",
  products: [
    .library(name: "T2SKit", targets: ["T2SKit"])
  ],
  targets: [
    .target(name: "T2SKit", dependencies: ["T2SKitC", "Tun2SocksFramework"]),
    .target(name: "T2SKitC", publicHeadersPath: "."),
    .binaryTarget(
      name: "Tun2SocksFramework",
      url: "https://github.com/hiFrankYoung/T2SKit/releases/download/0.2.0/Tun2SocksFramework.xcframework.zip",
      checksum: "8ea6ae2937c367e2c623aa0ef4d83dd5bebb45cfff13bc5453a3e26d1d33e9ba"
    )
  ]
)
