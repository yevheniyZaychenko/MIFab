# MIFab
A simple fully customizable floating action button with options

[![Platform](http://img.shields.io/badge/platform-ios-red.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/) 
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/MIFab.svg)](https://img.shields.io/cocoapods/v/MIFab.svg) 

<img src="demo.gif" height="500"/>

# Setup
- Add ```pod 'MIFab', '~> 1.1'``` to your Podfile or copy the "MIFab" folder to your project.
- Create a new instance with a couple of lines of code
```
  var fabConfig = MIFab.Config()
        
  fabConfig.buttonImage = UIImage(named: "iconC")
  fabConfig.buttonBackgroundColor = UIColor.orange
        
  fab = MIFab(
    parentVC: self,
    config: fabConfig,
    options: [
      MIFabOption(
        title: "Item 2",
        image: UIImage(named: "iconB"),
        backgroundColor: UIColor.orange,
        tintColor: UIColor.white,
        actionClosure: {
                        
          let alertController = UIAlertController(title: "Demo", message: "Second fab button tapped", preferredStyle: .alert)
          alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                        
          self.present(alertController, animated: true, completion: nil)
                        
        }
      ),
      MIFabOption(
        title: "Item 1",
        image: UIImage(named: "iconA"),
        backgroundColor: UIColor.orange,
        tintColor: UIColor.white,
        actionClosure: {
                        
          let alertController = UIAlertController(title: "Demo", message: "First fab button tapped", preferredStyle: .alert)
          alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                        
          self.present(alertController, animated: true, completion: nil)
                        
        }
      )
    ]
)
```
- You can show or hide the fab with the methods
```
showButton(animated: Bool = false)
hideButton(animated: Bool = false)
```

- You can customize the UI by changing the config properties

# Demo
In this repository you can also find a demo.

# Info
If you like this git you can follow me here or on twitter :) [@MarioIannotta](http://www.twitter.com/marioiannotta)

Cheers from Italy!

