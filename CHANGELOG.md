## 0.1.0

- **Breaking Change:** Dropped support for iOS 12 and below
- Updated plugin to Flutter 3.38 standards
- Added Swift Package Manager support
- Improved README and added screenshots

## 0.0.3

- **Breaking Change:** `isiOSAppOnMac` and `isiOSAppOnVision` are now static methods.

  ```dart
  // Before
  final instance = IsIosAppOnMac();
  final isiOSOnMac = await instance.isiOSAppOnMac();
  final isiOSOnVision = await instance.isiOSAppOnVision();

  // After
  final isiOSOnMac = await IsIosAppOnMac.isiOSAppOnMac();
  final isiOSOnVision = await IsIosAppOnMac.isiOSAppOnVision();
  ```

- Fixed Web from building and changed methods to be static for better usability.

## 0.0.2+1

- Fixed macOS from not building

## 0.0.2

- Add support for detecting if a Flutter app is being run on visionOS. Thank you [OutDatedGuy](https://github.com/OutdatedGuy)!

## 0.0.1+2

- Updated README images

## 0.0.1+1

- Updated README

## 0.0.1

- Checks if Flutter app is being run on an Apple Silicon Mac.
