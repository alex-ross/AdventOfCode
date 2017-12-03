import Foundation

class Day2: Day {
    let input: String

    var rows: [[Int]] {
        let strings = input.split(separator: "\n")
        
        return strings.map { substring -> [Int] in
            return substring.split(separator: " ").map { Int($0)! }
        }
    }

    required init(input: String) {
        self.input = input
    }
    
    func step1() -> String {
        return String(describing: checksum())
    }
    
    func step2() -> String {
        return String(describing: checksum2())
    }

    func checksum(forRow row: [Int]) -> Int {
        let max = row.max() ?? 0
        let min = row.min() ?? 0
        return max - min
    }
    
    func checksum(forRowAtIndex rowIndex: Int) -> Int {
        let row = rows[rowIndex]
        return checksum(forRow: row)
    }
    
    func checksum() -> Int {
        return rows.reduce(into: 0) { (result, row) in
            result += checksum(forRow: row)
        }
    }
    
    func checksum2() -> Int {
        return rows.reduce(into: 0) { (result, row) in
            result += checksum2(forRow: row)
        }
    }
    
    func checksum2(forRowAtIndex rowIndex: Int) -> Int {
        let row = rows[rowIndex]
        return checksum2(forRow: row)
    }
    
    func checksum2(forRow row: [Int]) -> Int {
        let sorted = row.sorted()
        for (index, divisor) in sorted.enumerated() {
            for divident in sorted[(index+1)..<sorted.endIndex] {
                if (divident % divisor) == 0 {
                    return divident / divisor
                }
            }
        }
        return 0
    }
}

