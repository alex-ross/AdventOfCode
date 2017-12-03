import Foundation

public final class CommandLineTool {
    private let arguments: [String]
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    var input: String {
        return arguments[3]
    }
    
    var step: String {
        return arguments[2]
    }
    
    var day: Day? {
        if arguments[1] == "day2" {
            return Day2(input: input)
        }
        
        return nil
    }
    
    public func run() throws {
        guard arguments.count > 3 else {
            renderDoc()
            return
        }
        
        guard let day = day else {
            print("Error: Day was not found")
            return
        }
        
        switch step {
        case "step1":
            print("Result: \(day.step1())")
        case "step2":
            print("Result: \(day.step2())")
        default:
            renderDoc()
        }
    }
    
    private func renderDoc() {
        print("""
              # AdventOfCode 2017

              Author: Alexander Ross, visit me at http://aross.se

              
              It's easies to store the input from advent of code in an textfile.
              Then you can use the binary and cat the input to it as the last argument.

              Look at this example:

                  AdventOfCode day2 step1 "$(cat [inputfile])"

              Days completed:
              
              🤗  Day 1, completed but in other source code
              ✅  Day 2
              """)
    }
    
    
}
