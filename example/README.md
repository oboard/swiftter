# Swiftter
Swiftter是一个Flutter Plugin，让你使用Swift UI的方式描述UI

```swift
VStack {
    Text("Swiffter")
    .color(.black)
    .shadow(color: .black, radius: 24, x: 0, y: 0),
}.padding(.all, 8).blur(12),
```

```dart
VStack([
    const Text("Swiffter")
        .color(Colors.black)
        .fontSize(24)
        .shadow(color: Colors.black, radius: 24, x: 0, y: 0)
        .expanded(),
]).padding(all: 8).blur(12),
```