# is_ios_app_on_mac

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

A Flutter plugin that checks to see if your Flutter iOS app is being run on an Apple Silicon Mac.

Uses Apple's [isiOSAppOnMac function](https://developer.apple.com/documentation/foundation/processinfo/3608556-isiosapponmac).
From Apple's Documentation:

> The value of this property is true only when the process is an iOS app running on a Mac. The value of the property is false for all other apps on the Mac, including Mac apps built using Mac Catalyst. The property is also false for processes running on platforms other than macOS.

This function only works on iOS 14 and above so the result will always return false on apps that are below iOS 14.

<img width="1085" alt="AppleSilconMac" src="https://github.com/alexrabin/is_ios_app_on_mac/assets/15949910/512d7de4-10b5-45b3-bafa-185670c60340">

<img width="667" alt="iPadExample" src="https://github.com/alexrabin/is_ios_app_on_mac/assets/15949910/5ce17f11-c932-461e-b6ee-c547587e8fdb">

<img width="446" alt="AndroidExample" src="https://github.com/alexrabin/is_ios_app_on_mac/assets/15949910/d43a4a20-b6a4-4900-bee3-493a16b2b0a2">


## Usage


```dart
import 'package:is_ios_app_on_mac/is_ios_app_on_mac.dart';

const isOnMac = await IsIosAppOnMac().isiOSAppOnMac()

```
