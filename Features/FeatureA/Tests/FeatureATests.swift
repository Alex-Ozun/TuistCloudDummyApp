@testable import FeatureA
import LibraryA
import LibraryB
import XCTest

final class FeatureATests: XCTestCase {
  func test() {
    FeatureA.hello()
    LibraryA.hello()
    LibraryB.hello()
    XCTAssertEqual(1, 1)
  }
}

