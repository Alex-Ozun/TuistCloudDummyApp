@testable import LibraryB
import XCTest

final class LibraryBTests: XCTestCase {
  func test() {
    LibraryB.hello()
    XCTAssertEqual(1, 1)
  }
}

