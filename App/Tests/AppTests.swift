@testable import App
import FeatureA
import FeatureB
import LibraryA
import LibraryB
import NonEmpty
import XCTest

final class AppTests: XCTestCase {
  func test() {
    FeatureA.hello()
    FeatureB.hello()
    LibraryA.hello()
    LibraryB.hello()
    XCTAssertEqual(1, 1)
  }
}

