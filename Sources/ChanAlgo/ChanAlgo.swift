public extension Array where Element: Comparable {
	mutating func insertionSort(increasing: Bool = true) {
		if increasing {
			var i = count
			while i != 0 {
				for j in 1..<i {
					if self[j - 1] > self[j] {
						swapAt(j, j - 1)
					}
				}
				i -= 1
			}
		} else {
			var i = count - 1
			while i > 0 {
				for j in 1...i {
					if self[j - 1] < self[j] {
						swapAt(j, j - 1)
					}
				}
				i -= 1
			}
		}
	}
}
