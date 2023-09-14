import ProjectDescription

let dependencies = Dependencies(
  swiftPackageManager: SwiftPackageManagerDependencies(
    [
      .package(
        url: "https://github.com/pointfreeco/swift-nonempty",
        .upToNextMajor(from: "0.4.0")
      ),
    ],
    baseSettings:
    .settings(
      base: [:],
      configurations: [
        .debug(name: .debug),
        .release(name: .release),
      ],
      defaultSettings: .recommended
    )
  )
)
