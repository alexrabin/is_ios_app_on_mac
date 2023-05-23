# is_ios_app_on_mac

A Flutter plugin that checks to see if your Flutter iOS app is being run on an Apple Silicon Mac.

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


Uses Apple's [isiOSAppOnMac function](https://developer.apple.com/documentation/foundation/processinfo/3608556-isiosapponmac).

This function only works on iOS 14 and above so the result will always return false on apps that are below iOS 14.

## Usage


```dart
import 'package:is_ios_app_on_mac/is_ios_app_on_mac.dart';

const isOnMac = await IsIosAppOnMac().isiOSAppOnMac()

```