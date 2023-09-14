import ProjectDescription

let project = Project(
  name: "AllInOneUnitTests",
  organizationName: "tuist.io",
  targets: [
    Target(
      name: "AllInOneUnitTests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.AllInOneUnitTests",
      sources: [
        .glob(.relativeToRoot("Features/FeatureA/Tests/**")),
        .glob(.relativeToRoot("Features/FeatureB/Tests/**")),
        .glob(.relativeToRoot("LibraryA/Tests/**")),
        .glob(.relativeToRoot("LibraryB/Tests/**")),
      ],
      dependencies: [
        .project(
          target: "FeatureA",
          path: .relativeToRoot("Features/FeatureA")
        ),
        .project(
          target: "FeatureB",
          path: .relativeToRoot("Features/FeatureB")
        ),
        .project(
          target: "LibraryA",
          path: .relativeToRoot("LibraryA")
        ),
        .project(
          target: "LibraryB",
          path: .relativeToRoot("LibraryB")
        ),
        .xctest
      ]
    )
  ]
)
