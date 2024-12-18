# WWSkeletonView
[![Swift-5.6](https://img.shields.io/badge/Swift-5.6-orange.svg?style=flat)](https://developer.apple.com/swift/) [![iOS-14.0](https://img.shields.io/badge/iOS-14.0-pink.svg?style=flat)](https://developer.apple.com/swift/) ![TAG](https://img.shields.io/github/v/tag/William-Weng/WWSkeletonView) [![Swift Package Manager-SUCCESS](https://img.shields.io/badge/Swift_Package_Manager-SUCCESS-blue.svg?style=flat)](https://developer.apple.com/swift/) [![LICENSE](https://img.shields.io/badge/LICENSE-MIT-yellow.svg?style=flat)](https://developer.apple.com/swift/)

### [Introduction - 簡介](https://swiftpackageindex.com/William-Weng)
- [Simply imitate the HTML Skeleton Screen function.](https://landpattern2630.wixsite.com/landpattern/copy-of-design-3)
- [簡單的模仿HTML Skeleton Screen功能。](https://github.com/William-Weng/WWBarberPoleView)

![](./Example.webp)

### [Installation with Swift Package Manager](https://medium.com/彼得潘的-swift-ios-app-開發問題解答集/使用-spm-安裝第三方套件-xcode-11-新功能-2c4ffcf85b4b)

```bash
dependencies: [
    .package(url: "https://github.com/William-Weng/WWSkeletonView.git", .upToNextMajor(from: "1.2.0"))
]
```

![](./IBDesignable.png)

### [Function - 可用函式](https://ezgif.com/video-to-webp)
|函式|功能|
|-|-|
|run(duration:middleColor:width:spacing:)|動畫開始|
|pause()|動畫暫停|

### Example
```swift
final class ViewController: UIViewController {

    @IBOutlet weak var mainSkeletonView: WWSkeletonView!
    @IBOutlet var labelSkeletonViews: [WWSkeletonView]!
        
    @IBAction func start(_ sender: UIBarButtonItem) {
        mainSkeletonView.run(duration: 2.0)
        labelSkeletonViews.forEach { $0.run() }
    }
}
```
