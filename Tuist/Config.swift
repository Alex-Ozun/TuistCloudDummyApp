import ProjectDescription

let config = Config(
  cache: .cache(
    profiles: [
      .profile(name: "Simulator", configuration: "Debug"),
    ],
    path: .relativeToRoot("TuistCache")
  ),
  generationOptions: .options(resolveDependenciesWithSystemScm: true)
)
