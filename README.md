# AdventOfCode

Run `swift build` to compile.

If you're building for mac it will probably be placed at `./.build/x86_64-apple-macosx10.10/debug/AdventOfCode`.

Usage for binary are as follows

```bash
AdventOfCode [day] [step] [text input]
```

| Param       | Example values            |
|:------------|:--------------------------|
| day         | `day1` or `day2`          |
| step        | `step1` or `step2`        |
| text input  | inout from advent of code |

It is easiest to store Advent of codes input value in a file. Otherwise you may end up with extra rowbreaks and so on dependent on your shell environment.

So lets say that you copied the input to `input.txt` then you can run the binary like this:

```bash
AdventOfCode day2 step2 "$(cat input.txt)"
```
