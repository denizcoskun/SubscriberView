# SubscriberView

SubscriberView is a simple SwiftUI View that deals with publishers in a much straightforward way. 

## Installation

### Swift Package Manager
Add the following dependency to your Package.swift file:

```swift
.package(url: "https://github.com/denizcoskun/SubscriberView.git", from: "1.0.0")
```


## Usage

```swift
// without SubscriberView 

struct ContentView: View {
    let publisher = Just(0)
    let value: Int = 0
    
    var body: some View {
        Text(value)
            .onReceive(publisher) { value in
                self.value = value
            }
    }
}
```

```swift
// with SubscriberView
struct ContentView: View {
    let publisher = Just(0)

    var body: some View {
        SubscriberView(publisher) {
            Text($0)
        }
    }
}
```

