#Swift String Extension



This extension is a must have because with swift 3.0 so many string functions are removed and the new approach is a bit confusing. So I decided to write this extension and I will definitely work more on it to make this a full swift string library.

<b>Examples</b>
```swift
var str = "Hello World"

str[1] // "e"
str.length // 11
str.indexOf(target: "l") // 2
str.lastIndexOf(target: "l") // 9
str.substring(to: str.lastIndexOf(target: "l")!) // "Hello Wor"
str.substring(from: 1, to: str.lastIndexOf(target: "l")!) // "ello Wor"
str.replace(string: "Hello", with: "Bye") // Bye World
str.split(separator: " ") // ["Hello", "World"]
str.removeAllChar("l") // "Heo Word"
str.removeCharAt(1) // "Hllo World" (Changes the actuall str) [mutating]
str = "   Hello World   "
str.trim() // "Hello World"
```

feel free to use this extension under Apache License terms.
