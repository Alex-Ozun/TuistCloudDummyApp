@testable import LibraryA
import XCTest

final class LibraryATests: XCTestCase {
  func test() {
    LibraryA.hello()
    XCTAssertEqual(1, 1)
  }
}

