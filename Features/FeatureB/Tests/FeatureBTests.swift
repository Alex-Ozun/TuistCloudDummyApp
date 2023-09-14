@testable import FeatureB
import LibraryA
import LibraryB
import XCTest

final class FeatureBTests: XCTestCase {
  func test() {
    FeatureB.hello()
    LibraryA.hello()
    LibraryB.hello()
    XCTAssertEqual(1, 1)
  }
}

