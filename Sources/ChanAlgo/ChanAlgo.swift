class ChanAlgo {
	
	func insertionSort<T: Comparable>(_ array: inout [T], increasing: Bool) {
		if increasing {
			var i = array.count
			while i != 0 {
				for j in 1..<i {
					if array[j - 1] > array[j] {
						array.swapAt(j, j - 1)
					}
				}
				i -= 1
			}
		} else {
			var i = array.count - 1
			while i > 0 {
				for j in 1...i {
					if array[j - 1] < array[j] {
						array.swapAt(j, j - 1)
					}
				}
				i -= 1
			}
		}
	}
}
