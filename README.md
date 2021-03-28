# SubscriberView

SubscriberView is a simple SwiftUI View that deals with publishers in a much straightforward way. 

## Installation

### Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add `https://github.com/denizcoskun/SubscriberView.git`
- Select "Up to Next Major" with "1.0.1"


## Usage

```swift
// without SubscriberView 

struct ContentView: View {
    let publisher = Just(0)
    @State let value: Int = 0
    
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
            Text("\($0)")
        }
    }
}
```

