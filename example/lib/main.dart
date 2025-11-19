import 'dart:io';

import 'package:flutter/material.dart';
import 'package:is_ios_app_on_mac/is_ios_app_on_mac.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _isIosAppOnMacPlugin = IsIosAppOnMac();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Is iOS App on Mac'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                  future: _isIosAppOnMacPlugin.isiOSAppOnMac(),
                  builder: (context, snapshot) {
                    final isiOSAppOnMac = snapshot.data ?? false;
                    return Text(
                      isiOSAppOnMac
                          ? "iOS App is running on a Mac ✅"
                          : '${Platform.isAndroid ? 'Android' : 'iOS'} App is not running on a Mac ❌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    );
                  }),
              const SizedBox(height: 20),
              FutureBuilder(
                  future: _isIosAppOnMacPlugin.isiOSAppOnVision(),
                  builder: (context, snapshot) {
                    final isiOSAppOnVision = snapshot.data ?? false;
                    return Text(
                      isiOSAppOnVision
                          ? "iOS App is running on visionOS ✅"
                          : '${Platform.isAndroid ? 'Android' : 'iOS'} App is not running on visionOS ❌',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
