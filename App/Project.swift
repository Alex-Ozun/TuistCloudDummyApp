import ProjectDescription

let name = "App"
let project = Project(
  name: name,
  organizationName: "tuist.io",
  targets: [
    Target(
      name: name,
      platform: .iOS,
      product: .app,
      bundleId: "io.tuist.App",
      sources: ["Sources/**"],
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
        .external(name: "NonEmpty")
      ]
    ),
    Target(
      name: name + "Tests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.App",
      sources: ["Tests/**"],
      dependencies: [
        .target(name: name),
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
        .external(name: "NonEmpty"),
        .xctest
      ]
    ),
  ]
)
