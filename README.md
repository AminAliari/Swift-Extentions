#Swift String Extention



This extention is a must have because with swift 3.0 so many string function are removed and the new approche is a bit confusing.
so i decided to write this extension and i will definitly work more one it to make a full swift string library.

<b>Example</b>
```swift
var str = "Hello World"

str[1]
str.length
str.indexOf(target: "l")
str.lastIndexOf(target: "l")
str.substring(to: str.lastIndexOf(target: "l")!)
str.substring(from: 1, to: str.lastIndexOf(target: "l")!)

```

feel free to use this under Apache License terms.
