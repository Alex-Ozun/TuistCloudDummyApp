import LibraryA
import LibraryB

public final class FeatureA {
  public static func hello() {
    LibraryA.hello()
    LibraryB.hello()
  }
}
