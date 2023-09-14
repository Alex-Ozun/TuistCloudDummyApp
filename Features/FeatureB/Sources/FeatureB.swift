import LibraryA
import LibraryB

public final class FeatureB {
  public static func hello() {
    LibraryA.hello()
    LibraryB.hello()
  }
}
