# AutoBlurScreen

[![CI Status](https://img.shields.io/travis/Tarik/AutoBlurScreen.svg?style=flat)](https://travis-ci.org/Tarik/AutoBlurScreen)
[![Version](https://img.shields.io/cocoapods/v/AutoBlurScreen.svg?style=flat)](https://cocoapods.org/pods/AutoBlurScreen)
[![License](https://img.shields.io/cocoapods/l/AutoBlurScreen.svg?style=flat)](https://cocoapods.org/pods/AutoBlurScreen)
[![Platform](https://img.shields.io/cocoapods/p/AutoBlurScreen.svg?style=flat)](https://cocoapods.org/pods/AutoBlurScreen)

## Example

To run the example project, clone the repo, and run  `pod install`  from the Example directory first.

## Requirements
*Swift 4  (Xcode 10)*


## Installation

AutoBlurScreen is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
    pod 'AutoBlurScreen'
```

## Usage

Implement AutoBlurScreen to AppDelegate method and set your blur style.

Example:

```swift
import UIKit
import AutoBlurScreen

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var autoBlur = AutoBlurScreen()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        autoBlur.blurStyle = .light
        autoBlur.isAutoBlur = true
    return true
    }
}

```

```swift
import UIKit
import AutoBlurScreen

    var autoBlur = AutoBlurScreen()
    autoBlur.blurStyle = .light // style of blur screen
    autoBlur.isAutoBlur = true  // use auto enable or dissabled blur effect
    autoBlur.createBlurEffect() // use to custom show blur screen
    autoBlur.removeBlurEffect() // use to custom hide blur screen
```
## Author

Tarik, 4taras4@gmail.com

## License

AutoBlurScreen is available under the MIT license. See the LICENSE file for more info.
