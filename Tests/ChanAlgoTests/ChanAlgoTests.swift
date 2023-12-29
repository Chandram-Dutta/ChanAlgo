import XCTest

@testable import ChanAlgo

final class ChanAlgoTests: XCTestCase {
  let algo = ChanAlgo()
  // Test for increasing order sorting
  func test_insertionSort_increasing() throws {
    // Arrange
    var testArray = [5, 2, 4, 6, 1, 3]
    let expectedResult = [1, 2, 3, 4, 5, 6]

    // Act
    algo.insertionSort(&testArray, increasing: true)

    // Assert
    XCTAssertEqual(testArray, expectedResult)
  }

  // Test for decreasing order sorting
  func test_insertionSort_decreasing() throws {
    // Arrange
    var testArray = [5, 2, 4, 6, 1, 3]
    let expectedResult = [6, 5, 4, 3, 2, 1]

    // Act
    algo.insertionSort(&testArray, increasing: false)

    // Assert
    XCTAssertEqual(testArray, expectedResult)
  }

  // Test for empty array
  func test_insertionSort_emptyArray() throws {
    // Arrange
    var testArray: [Int] = []
    let expectedResult: [Int] = []

    // Act
    algo.insertionSort(&testArray, increasing: true)

    // Assert
    XCTAssertEqual(testArray, expectedResult)
  }

  // Test for already sorted array
  func test_insertionSort_alreadySorted() throws {
    // Arrange
    var testArray = [1, 2, 3, 4, 5, 6]
    let expectedResult = [1, 2, 3, 4, 5, 6]

    // Act
    algo.insertionSort(&testArray, increasing: true)

    // Assert
    XCTAssertEqual(testArray, expectedResult)
  }

  // Test for single-element array
  func test_insertionSort_singleElement() throws {
    // Arrange
    var testArray = [5]
    let expectedResult = [5]

    // Act
    algo.insertionSort(&testArray, increasing: true)

    // Assert
    XCTAssertEqual(testArray, expectedResult)
  }

  // Test for array with repeating elements
  func test_insertionSort_repeatingElements() throws {
    // Arrange
    var testArray = [5, 2, 2, 4, 4, 1, 3]
    let expectedResult = [1, 2, 2, 3, 4, 4, 5]

    // Act
    algo.insertionSort(&testArray, increasing: true)

    // Assert
    XCTAssertEqual(testArray, expectedResult)
  }
}
