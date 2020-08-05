import 'dart:async';

import 'package:flutter/services.dart';

class Logeverything {
  static const MethodChannel _channel =
      const MethodChannel('logeverything');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
