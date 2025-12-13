# is_ios_app_on_mac

<p align="center">
 <img src="https://github.com/alexrabin/is_ios_app_on_mac/assets/15949910/2f74ade2-ba57-42db-b4d0-e3b410e7d256" width=250/>
</p>
<p align="center">
 <a href="https://pub.dartlang.org/packages/is_ios_app_on_mac">
    <img alt="is_ios_app_on_mac" src="https://img.shields.io/pub/v/is_ios_app_on_mac.svg">
  </a>
 <a href="https://www.paypal.com/donate/?hosted_button_id=6ZB3J8WR4CNV8">
    <img alt="Donate" src="https://img.shields.io/badge/Donate-PayPal-blue.svg">
  </a>
 <a href="https://www.buymeacoffee.com/alexrabin">
    <img alt="Buy me a coffee" src="https://img.shields.io/badge/Donate-Buy%20Me%20A%20Coffee-yellow.svg">
  </a>
<img alt="GitHub issues" src="https://img.shields.io/github/issues/alexrabin/is_ios_app_on_mac?color=red">
  <img src="https://img.shields.io/github/license/alexrabin/is_ios_app_on_mac">
  <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/alexrabin/is_ios_app_on_mac?style=social">
</p>

A Flutter plugin that detects whether your iOS app is running on an Apple Silicon Mac or visionOS.

## Features

This plugin leverages Apple's native APIs to provide accurate platform detection:

- **[isiOSAppOnMac](https://developer.apple.com/documentation/foundation/processinfo/isiosapponmac)** - Detects when your iOS app is running on a Mac
- **[isiOSAppOnVision](https://developer.apple.com/documentation/foundation/processinfo/isiosapponvision)** - Detects when your iOS app is running on visionOS

### How It Works

According to Apple's documentation, `isiOSAppOnMac`:

> Returns `true` only when the process is an iOS app running on a Mac. Returns `false` for all other apps on the Mac, including Mac apps built using Mac Catalyst, and for processes running on platforms other than macOS.

According to Apple's documentation, `isiOSAppOnVision`:

> Returns `true` only when the process is an iOS app running on visionOS. Returns `false` for every other platform.

### Platform Requirements

- **isiOSAppOnMac**: Requires iOS 14.0 or later (returns `false` on earlier versions)
- **isiOSAppOnVision**: Requires iOS 26.1 or later (returns `false` on earlier versions)

## Screenshots

| Mac (Designed for iPad)      | Vision Pro (Designed for iPad)      |
| ---------------------------- | ----------------------------------- |
| ![][Mac (Designed for iPad)] | ![][Vision Pro (Designed for iPad)] |

| iPad      | macOS      |
| --------- | ---------- |
| ![][iPad] | ![][macOS] |

| iPhone      | Android      |
| ----------- | ------------ |
| ![][iPhone] | ![][Android] |

## Usage

```dart
import 'package:is_ios_app_on_mac/is_ios_app_on_mac.dart';

final isOnMac = await IsIosAppOnMac.isiOSAppOnMac()

final isOnVisionOS = await IsIosAppOnMac.isiOSAppOnVision()

```

<!-- Screenshot Links -->

[Mac (Designed for iPad)]: https://raw.githubusercontent.com/alexrabin/is_ios_app_on_mac/main/screenshots/Mac%20(Designed%20for%20iPad).png
[Vision Pro (Designed for iPad)]: https://raw.githubusercontent.com/alexrabin/is_ios_app_on_mac/main/screenshots/Vision%20Pro%20(Designed%20for%20iPad).png
[iPhone]: https://raw.githubusercontent.com/alexrabin/is_ios_app_on_mac/main/screenshots/iPhone.png
[Android]: https://raw.githubusercontent.com/alexrabin/is_ios_app_on_mac/main/screenshots/Android.png
[iPad]: https://raw.githubusercontent.com/alexrabin/is_ios_app_on_mac/main/screenshots/iPad.png
[macOS]: https://raw.githubusercontent.com/alexrabin/is_ios_app_on_mac/main/screenshots/macOS.png
