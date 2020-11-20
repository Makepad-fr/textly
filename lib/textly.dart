
import 'dart:async';

import 'package:flutter/services.dart';

class Textly {
  static const MethodChannel _channel =
      const MethodChannel('textly');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
