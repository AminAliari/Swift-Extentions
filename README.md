#Swift String Extension



This extension is a must have because with swift 3.0 so many string functions are removed and the new approach is a bit confusing. So I decided to write this extension and I will definitely work more on it to make this a full swift string library.

#Examples#

<b>Int Index Based subscript</b>
```swift
let str = "Hello World"
print(str[1]) // "e"
```

<b>Length</b>
```swift
let str = "Hello World"
print(str.length) // 11
```

<b>Index Of Characters</b>
```swift
let str = "Hello World"
print(str.indexOf(target: "l")) // 2
print(str.lastIndexOf(target: "l")) // 9
```
<b>Substring</b>
```swift
let str = "Hello World"
print(str.substring(to: str.lastIndexOf(target: "l")!)) // "Hello Wor"
print(str.substring(from: 1, to: str.lastIndexOf(target: "l")!)) // "ello Wor"
```

<b>Replace</b>
```swift
let str = "Hello World"
print(str.replace(string: "Hello", with: "Bye")) // Bye World
print(str.split(separator: " ")) // ["Hello", "World"]
```
<b>Remove Characters</b>
```swift
let str = "Hello World"
print(str.removeAllChar("l")) // "Heo Word"
print(str.removeCharAt(1)) // "Hllo World" (Changes the actuall str) [mutating]
```

<b>Trimming</b>
```swift
var str = " Hello World "
print(str.trim()) // "Hello World"
print(str += "!") // " Hello World !"
print(str.trim(char: "!")) // " Hello World "
print(str.trim(charsInString: " !")) // "Hello World"
```

feel free to use this extension under Apache License terms.
