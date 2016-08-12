#Swift String Extension



This extension is a must have because with swift 3.0 so many string functions are removed and the new approach is a bit confusing. So I decided to write this extension and I will definitely work more on it to make this a full swift string library.

##Examples##

<b>Int Index Based subscript</b>
```swift
let str = "Hello World"
str[1] // "e"
```

<b>Length</b>
```swift
let str = "Hello World"
str.length // 11
```

<b>Index Of Characters</b>
```swift
let str = "Hello World"
str.indexOf(target: "l") // 2
str.lastIndexOf(target: "l") // 9
```
<b>Substring</b>
```swift
let str = "Hello World"
str.substring(to: str.lastIndexOf(target: "l")!) // "Hello Wor"
str.substring(from: 1, to: str.lastIndexOf(target: "l")!) // "ello Wor"
```

<b>Replace</b>
```swift
let str = "Hello World"
str.replace(string: "Hello", with: "Bye") // Bye World
str.split(separator: " ") // ["Hello", "World"]
```
<b>Remove Characters</b>
```swift
let str = "Hello World"
str.removeAllChar("l") // "Heo Word"
str.removeCharAt(1) // "Hllo World" (Changes the actuall str) [mutating]
```

<b>Trimming</b>
```swift
var str = " Hello World "
str.trim() // "Hello World"
str += "!" // " Hello World !"
str.trim(char: "!") // " Hello World "
str.trim(charsInString: " !") // "Hello World"
```

feel free to use this extension under Apache License terms.
