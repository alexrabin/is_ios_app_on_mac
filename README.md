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

- **[isiOSAppOnMac](https://developer.apple.com/documentation/foundation/processinfo/3608556-isiosapponmac)** - Detects when your iOS app is running on a Mac
- **[isiOSAppOnVision](https://developer.apple.com/documentation/foundation/processinfo/isiosapponvision)** - Detects when your iOS app is running on visionOS

### How It Works

According to Apple's documentation, `isiOSAppOnMac`:

> Returns `true` only when the process is an iOS app running on a Mac. Returns `false` for all other apps on the Mac, including Mac apps built using Mac Catalyst, and for processes running on platforms other than macOS.

### Platform Requirements

- **isiOSAppOnMac**: Requires iOS 14.0 or later (returns `false` on earlier versions)
- **isiOSAppOnVision**: Requires iOS 26.1 or later (returns `false` on earlier versions)

<img width="600" alt="AppleSilconMac" src="https://github.com/alexrabin/is_ios_app_on_mac/assets/15949910/512d7de4-10b5-45b3-bafa-185670c60340"/>

<br/>

<img width="500" alt="iPadExample" src="https://github.com/alexrabin/is_ios_app_on_mac/assets/15949910/5ce17f11-c932-461e-b6ee-c547587e8fdb"/>

<br/>

<img width="300" alt="AndroidExample" src="https://github.com/alexrabin/is_ios_app_on_mac/assets/15949910/d43a4a20-b6a4-4900-bee3-493a16b2b0a2"/>

## Usage

```dart
import 'package:is_ios_app_on_mac/is_ios_app_on_mac.dart';

const isOnMac = await IsIosAppOnMac.isiOSAppOnMac()

const isOnVisionOS = await IsIosAppOnMac.isiOSAppOnVision()

```
