import ProjectDescription

let name = "FeatureB"
let project = Project(
  name: name,
  organizationName: "tuist.io",
  targets: [
    Target(
      name: name,
      platform: .iOS,
      product: .staticFramework,
      bundleId: "io.tuist." + name,
      sources: ["Sources/**"],
      dependencies: [
        .project(
          target: "LibraryA",
          path: .relativeToRoot("LibraryA")
        ),
        .project(
          target: "LibraryB",
          path: .relativeToRoot("LibraryB")
        ),
      ]
    ),
    Target(
      name: name + "Tests",
      platform: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.tests." + name,
      sources: ["Tests/**"],
      dependencies: [
        .target(name: name),
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
    ),
  ]
)
