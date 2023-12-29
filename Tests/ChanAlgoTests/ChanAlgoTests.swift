import XCTest
import ChanAlgo

final class ArrayInsertionSortTests: XCTestCase {
	// Test for increasing order sorting
	func test_insertionSort_increasing() {
		// Arrange
		var testArray = [5, 2, 4, 6, 1, 3]
		let expectedResult = [1, 2, 3, 4, 5, 6]
		
		// Act
		testArray.insertionSort()
		
		// Assert
		XCTAssertEqual(testArray, expectedResult)
	}
	
	// Test for decreasing order sorting
	func test_insertionSort_decreasing() {
		// Arrange
		var testArray = [5, 2, 4, 6, 1, 3]
		let expectedResult = [6, 5, 4, 3, 2, 1]
		
		// Act
		testArray.insertionSort(increasing: false)
		
		// Assert
		XCTAssertEqual(testArray, expectedResult)
	}
	
	// Edge cases:
	
	// Test for empty array
	func test_insertionSort_emptyArray() {
		// Arrange
		var testArray: [Int] = []
		let expectedResult: [Int] = []
		
		// Act
		testArray.insertionSort()
		
		// Assert
		XCTAssertEqual(testArray, expectedResult)
	}
	
	// Test for already sorted array
	func test_insertionSort_alreadySorted() {
		// Arrange
		var testArray = [1, 2, 3, 4, 5, 6]
		let expectedResult = [1, 2, 3, 4, 5, 6]
		
		// Act
		testArray.insertionSort()
		
		// Assert
		XCTAssertEqual(testArray, expectedResult)
	}
	
	// Test for single-element array
	func test_insertionSort_singleElement() {
		// Arrange
		var testArray = [5]
		let expectedResult = [5]
		
		// Act
		testArray.insertionSort()
		
		// Assert
		XCTAssertEqual(testArray, expectedResult)
	}
	
	// Test for array with repeating elements
	func test_insertionSort_repeatingElements() {
		// Arrange
		var testArray = [5, 2, 2, 4, 4, 1, 3]
		let expectedResult = [1, 2, 2, 3, 4, 4, 5]
		
		// Act
		testArray.insertionSort()
		
		// Assert
		XCTAssertEqual(testArray, expectedResult)
	}
}
