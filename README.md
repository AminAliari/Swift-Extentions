#Swift String Extention



This extention is a must have because with swift 3.0 so many string function are removed and the new approche is a bit confusing.
so i decided to write this extension and i will definitly work more one it to make this a full swift string library.

<b>Examples</b>
```swift
var str = "Hello World"

str[1] // "e"
str.length // 11
str.indexOf(target: "l") // 2
str.lastIndexOf(target: "l") // 9
str.substring(to: str.lastIndexOf(target: "l")!) // "Hello Wor"
str.substring(from: 1, to: str.lastIndexOf(target: "l")!) // "ello Wor"

```

feel free to use this under Apache License terms.
